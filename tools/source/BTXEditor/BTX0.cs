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
			uint TEXoffset = BitConverter.ToUInt32(BTXFile, 16);
			if (BitConverter.ToUInt32(BTXFile, (int)TEXoffset) != 811091284U)
			{
				return null;
			}
			uint paramsOffset = TEXoffset + (uint)BitConverter.ToUInt16(BTXFile, (int)(TEXoffset + 0xEU));
			uint startImgOffset = TEXoffset + BitConverter.ToUInt32(BTXFile, (int)(TEXoffset + 0x14U));
			Program.ImageOffset = startImgOffset;
			uint num4 = BitConverter.ToUInt32(BTXFile, (int)(TEXoffset + 0x30U)) << 3;
			uint num5 = TEXoffset + BitConverter.ToUInt32(BTXFile, (int)(TEXoffset + 0x34U));
			uint endImgOffset = TEXoffset + BitConverter.ToUInt32(BTXFile, (int)(TEXoffset + 0x38U));
			Program.PaletteOffset = endImgOffset;
			uint numFrames = (uint)BTXFile[(int)(paramsOffset + 1U)];
			uint propertiesOffset = (uint)BitConverter.ToUInt16(BTXFile, (int)(paramsOffset + 0x12U + numFrames * 4U)); // first frame's properties offset
			uint width = 8U << ((int)propertiesOffset >> 4 & 7);
			uint num10 = propertiesOffset >> 10 & 7U;
			uint num11 = (uint)BTXFile[(int)(num5 + 1U)];
			Program.PaletteCount = num11;
			Program.PaletteSize = num4;
			if (num10 == 3U)
			{
				Color[] palettes = new Color[num4 / num11 / 2U];
				if (num4 < 64U && num11 >= 2U)
				{
					palettes = new Color[((long)BTXFile.Length - (long)((ulong)endImgOffset)) / 2L];
				}
				Program.ColorCount = (uint)palettes.Length;
				for (int i = 0; i < palettes.Length; i++)
				{
					ushort num12 = BitConverter.ToUInt16(BTXFile, (int)(endImgOffset + Program.PaletteIndex * (Program.ColorCount * 2U) + (uint)(i * 2)));
					uint red = (uint)((uint)(num12 & 0x1F) << 3);
					uint green = (uint)(num12 & 0x3E0) >> 2;
					uint blue = (uint)(num12 & 0x7C00) >> 7;
					palettes[i] = Color.FromArgb(255, (int)red, (int)green, (int)blue);
				}
				Program.ImageWidth = width;
				Program.ImageHeight = (endImgOffset - startImgOffset) * 2U / width;
				Bitmap bitmap = new Bitmap((int)Program.ImageWidth, (int)Program.ImageHeight);
				uint currentColumn = 0U;
				uint currRow = 0U;
				int currOffset = (int)startImgOffset;
				while ((long)currOffset < (long)((ulong)endImgOffset))
				{
					uint num16 = (uint)BTXFile[currOffset];
					uint[] pixArray = new uint[]
					{
						num16 & 15U,
						num16 >> 4
					};
					for (int j = 0; j < pixArray.Length; j++)
					{
						bitmap.SetPixel((int)currentColumn, (int)currRow, palettes[(int)pixArray[j]]);
						currentColumn += 1U;
					}
					if (currentColumn >= width)
					{
						currentColumn = 0U;
						currRow += 1U;
					}
					currOffset++;
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
