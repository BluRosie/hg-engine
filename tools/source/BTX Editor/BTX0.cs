using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;

namespace BTX_Editor
{
	// Token: 0x02000002 RID: 2
	internal class BTX0
	{
		// Token: 0x06000001 RID: 1 RVA: 0x00002050 File Offset: 0x00000250
		public static Bitmap Read(byte[] BTXFile)
		{
			if (BitConverter.ToUInt32(BTXFile, 0) != 811095106U)
			{
				return null;
			}
			uint num = BitConverter.ToUInt32(BTXFile, 16);
			if (BitConverter.ToUInt32(BTXFile, (int)num) != 811091284U)
			{
				return null;
			}
			uint num2 = num + (uint)BitConverter.ToUInt16(BTXFile, (int)(num + 14U));
			uint num3 = num + BitConverter.ToUInt32(BTXFile, (int)(num + 20U));
			Program.ImageOffset = num3;
			uint num4 = BitConverter.ToUInt32(BTXFile, (int)(num + 48U)) << 3;
			uint num5 = num + BitConverter.ToUInt32(BTXFile, (int)(num + 52U));
			uint num6 = num + BitConverter.ToUInt32(BTXFile, (int)(num + 56U));
			Program.PaletteOffset = num6;
			uint num7 = (uint)BTXFile[(int)(num2 + 1U)];
			uint num8 = (uint)BitConverter.ToUInt16(BTXFile, (int)(num2 + 12U + num7 * 4U + 6U));
			uint num9 = 8U << ((int)num8 >> 4 & 7);
			uint num10 = num8 >> 10 & 7U;
			uint num11 = (uint)BTXFile[(int)(num5 + 1U)];
			Program.PaletteCount = num11;
			Program.PaletteSize = num4;
			if (num10 == 3U)
			{
				Color[] array = new Color[num4 / num11 / 2U];
				if (num4 < 64U && num11 >= 2U)
				{
					array = new Color[((long)BTXFile.Length - (long)((ulong)num6)) / 2L];
				}
				Program.ColorCount = (uint)array.Length;
				for (int i = 0; i < array.Length; i++)
				{
					ushort num12 = BitConverter.ToUInt16(BTXFile, (int)(num6 + Program.PaletteIndex * (Program.ColorCount * 2U) + (uint)(i * 2)));
					uint red = (uint)((uint)(num12 & 31) << 3);
					uint green = (uint)(num12 & 992) >> 2;
					uint blue = (uint)(num12 & 31744) >> 7;
					array[i] = Color.FromArgb(255, (int)red, (int)green, (int)blue);
				}
				Program.ImageWidth = num9;
				Program.ImageHeight = (num6 - num3) * 2U / num9;
				Bitmap bitmap = new Bitmap((int)Program.ImageWidth, (int)Program.ImageHeight);
				uint num13 = 0U;
				uint num14 = 0U;
				int num15 = (int)num3;
				while ((long)num15 < (long)((ulong)num6))
				{
					uint num16 = (uint)BTXFile[num15];
					uint[] array2 = new uint[]
					{
						num16 & 15U,
						num16 >> 4
					};
					for (int j = 0; j < array2.Length; j++)
					{
						bitmap.SetPixel((int)num13, (int)num14, array[(int)array2[j]]);
						num13 += 1U;
					}
					if (num13 >= num9)
					{
						num13 = 0U;
						num14 += 1U;
					}
					num15++;
				}
				return bitmap;
			}
			return null;
		}

		// Token: 0x06000002 RID: 2 RVA: 0x00002260 File Offset: 0x00000460
		public static byte[] Write(byte[] BTXFile, Bitmap bm)
		{
			HashSet<Color> hashSet = new HashSet<Color>();
			uint num = 0U;
			uint num2 = 0U;
			for (int i = 0; i < bm.Width * bm.Height; i++)
			{
				hashSet.Add(bm.GetPixel((int)num, (int)num2));
				num += 1U;
				if ((ulong)num >= (ulong)((long)bm.Width))
				{
					num = 0U;
					num2 += 1U;
				}
			}
			Color[] array = hashSet.ToArray<Color>();
			num = 0U;
			num2 = 0U;
			int num3 = (int)Program.ImageOffset;
			while ((long)num3 < (long)((ulong)Program.PaletteOffset))
			{
				Color pixel = bm.GetPixel((int)num, (int)num2);
				num += 1U;
				uint num4 = 0U;
				for (int j = 0; j < array.Length; j++)
				{
					if (array[j] == pixel)
					{
						num4 = (uint)j;
						break;
					}
				}
				pixel = bm.GetPixel((int)num, (int)num2);
				num += 1U;
				for (int k = 0; k < array.Length; k++)
				{
					if (array[k] == pixel)
					{
						num4 += (uint)((uint)k << 4);
						break;
					}
				}
				BTXFile[num3] = (byte)num4;
				if (num >= Program.ImageWidth)
				{
					num = 0U;
					num2 += 1U;
				}
				num3++;
			}
			for (int l = 0; l < array.Length; l++)
			{
				uint num5 = (uint)Math.Round((double)array[l].R / 8.0);
				uint num6 = (uint)Math.Round((double)array[l].G / 8.0);
				uint num7 = (uint)Math.Round((double)array[l].B / 8.0);
				if (num5 > 31U)
				{
					num5 = 31U;
				}
				if (num6 > 31U)
				{
					num6 = 31U;
				}
				if (num7 > 31U)
				{
					num7 = 31U;
				}
				uint num8 = num5 + (num6 << 5) + (num7 << 10);
				BTXFile[(int)(checked((IntPtr)(unchecked((ulong)(Program.PaletteOffset + Program.PaletteIndex * (Program.ColorCount * 2U)) + (ulong)((long)(l * 2))))))] = (byte)num8;
				BTXFile[(int)(checked((IntPtr)(unchecked((ulong)(Program.PaletteOffset + Program.PaletteIndex * (Program.ColorCount * 2U)) + (ulong)((long)(l * 2)) + 1UL))))] = (byte)(num8 >> 8);
			}
			return BTXFile;
		}
	}
}
