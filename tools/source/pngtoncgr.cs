using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Resources;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using System.Diagnostics;
using System.Security.Authentication;
using System.Xml;

namespace PlatinumSpriteEditor
{
	class MainForm
	{
		static Rectangle rect;
		
		public static void Main(string[] args)
		{
			//Console.WriteLine("{0}", args[0]);

			if (args.Length != 3)
			{
				Console.WriteLine("pngtoncgr converts a png image to Nintendo's ncgr format for use with HGSS Sprites\n\nUsage:  pngtoncgr [input path] [ncgr path] [nclr path]\n");
				return;
			}

			FileStream output = System.IO.File.OpenWrite(args[1]);
			FileStream palette = System.IO.File.OpenWrite(args[2]);

			Bitmap source = (Bitmap)Image.FromFile(args[0]);

			SaveBin(output, source);
			SavePal(palette, StandardizeColors(source));
		}
						
		static Bitmap MakeImage(FileStream fs)
		{
			fs.Seek(48L, SeekOrigin.Current);
			BinaryReader binaryReader = new BinaryReader(fs);
			ushort[] array = new ushort[3200];
			for (int i = 0; i < 3200; i++)
			{
				array[i] = binaryReader.ReadUInt16();
			}
			uint num = array[0];
			//if (DPCheck.Checked == false)
			{
				for (int j = 0; j < 3200; j++)
				{
					unchecked
					{
						ushort[] array2;
						IntPtr value;
						(array2 = array)[(int)(value = (IntPtr)j)] = (ushort)(array2[(int)value] ^ (ushort)(num & 0xFFFF));
						num *= 1103515245;
						num += 24691;
					}
				}
			}
			
			Bitmap r_bitmap = new Bitmap(160, 80, PixelFormat.Format8bppIndexed);
			rect = new Rectangle(0, 0, 160, 80);
			byte[] array3 = new byte[12800];
			for (int k = 0; k < 3200; k++)
			{
				array3[k * 4] = (byte)(array[k] & 0xF);
				array3[k * 4 + 1] = (byte)((array[k] >> 4) & 0xF);
				array3[k * 4 + 2] = (byte)((array[k] >> 8) & 0xF);
				array3[k * 4 + 3] = (byte)((array[k] >> 12) & 0xF);
			}
			BitmapData bitmapData = r_bitmap.LockBits(rect, ImageLockMode.WriteOnly, r_bitmap.PixelFormat);
			IntPtr scan = bitmapData.Scan0;
			Marshal.Copy(array3, 0, scan, 12800);
			r_bitmap.UnlockBits(bitmapData);
			Bitmap bitmap = new Bitmap(1, 1, PixelFormat.Format4bppIndexed);
			ColorPalette palette = bitmap.Palette;
			for (int l = 0; l < 16; l++)
			{
				palette.Entries[l] = Color.FromArgb(l << 4, l << 4, l << 4);
			}
			r_bitmap.Palette = palette;
						
			if (r_bitmap == null)
			{
				MessageBox.Show("MakeImage Failed");
				return null;
			}
			return r_bitmap;
		}
		
		static ColorPalette SetPal(FileStream fs)
		{
			fs.Seek(40L, SeekOrigin.Current);
			ushort[] array = new ushort[16];
			BinaryReader binaryReader = new BinaryReader(fs);
			for (int i = 0; i < 16; i++)
			{
				array[i] = binaryReader.ReadUInt16();
			}
			Bitmap bitmap = new Bitmap(1, 1, PixelFormat.Format4bppIndexed);
			ColorPalette palette = bitmap.Palette;
			for (int j = 0; j < 16; j++)
			{
				palette.Entries[j] = Color.FromArgb((array[j] & 0x1F) << 3, ((array[j] >> 5) & 0x1F) << 3, ((array[j] >> 10) & 0x1F) << 3);
			}
			return palette;
		}
		
		static ColorPalette StandardizeColors(Bitmap image)
		{
			ColorPalette pal = image.Palette;
			bool OffColor = false;
			for (int i=0; i<pal.Entries.Length; i++)
			{
				if ((pal.Entries[i].R % 8 != 0) || (pal.Entries[i].G % 8 != 0) || (pal.Entries[i].B % 8 != 0))
					OffColor = true;
			}
			if (OffColor)
			{
//				yesno = MessageBox.Show("Colors are not appropriately formatted for storage.  Fix?", "Incompatible colors", MessageBoxButtons.YesNo);
//				if(yesno != DialogResult.Yes)
//					MessageBox.Show("Colors will not store correctly.  Image may look different in-game.", "Failed");
				for (int i=0; i<pal.Entries.Length; i++)
				{
					byte r = (byte)(pal.Entries[i].R - (pal.Entries[i].R % 8));
					byte g = (byte)(pal.Entries[i].G - (pal.Entries[i].G % 8));
					byte b = (byte)(pal.Entries[i].B - (pal.Entries[i].B % 8));
					pal.Entries[i] = Color.FromArgb(r, g, b);
				}
			}
			return pal;
		}
		
		static void SavePNG(Bitmap image, string filename)
		{
			IndexedBitmapHandler Handler = new IndexedBitmapHandler();
			byte[] array = Handler.GetArray(image);
			Bitmap temp = Handler.MakeImage(image.Width, image.Height, array, image.PixelFormat);
			ColorPalette cleaned = Handler.CleanPalette(image);
			temp.Palette = cleaned;
			temp.Save(filename, ImageFormat.Png);
		}
				
		static void SaveBin(FileStream fs, Bitmap source)
		{
			BinaryWriter binaryWriter = new BinaryWriter(fs);
			rect = new Rectangle(0, 0, 160, 80);
			BitmapData bitmapData = source.LockBits(rect, ImageLockMode.ReadOnly, source.PixelFormat);
			IntPtr scan = bitmapData.Scan0;
			byte[] array = new byte[12800];
			Marshal.Copy(scan, array, 0, 12800);
			source.UnlockBits(bitmapData);
			ushort[] array2 = new ushort[3200];
			for (int i = 0; i < 3200; i++)
			{
				array2[i] = (ushort)((array[i * 4] & 0xF) | ((array[i * 4 + 1] & 0xF) << 4) | ((array[i * 4 + 2] & 0xF) << 8) | ((array[i * 4 + 3] & 0xF) << 12));
			}
			uint num = 0u;
			//if (DPCheck.Checked == false)
			{
				for (int j = 0; j < 3200; j++)
				{
					unchecked
					{
						ushort[] array3;
						IntPtr value;
						(array3 = array2)[(int)(value = (IntPtr)j)] = (ushort)(array3[(int)value] ^ (ushort)(num & 0xFFFF));
						num *= 1103515245;
						num += 24691;
					}
				}
			}
			byte[] array4 = new byte[48]
			{82, 71, 67, 78, 255, 254, 0, 1, 48, 25, 0, 0, 16, 0, 1, 0, 82, 65, 72, 67, 32, 25, 0, 0, 10, 0, 20, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 25, 0, 0, 24, 0, 0, 0};
			for (int k = 0; k < 48; k++)
			{
				binaryWriter.Write(array4[k]);
			}
			for (int l = 0; l < 3200; l++)
			{
				binaryWriter.Write(array2[l]);
			}
		}

		static void SavePal(FileStream fs, ColorPalette palette)
		{
			byte[] buffer = new byte[40]
			{82, 76, 67, 78, 255, 254, 0, 1, 72, 0, 0, 0, 16, 0, 1, 0, 84, 84, 76, 80, 56, 0, 0, 0, 4, 0, 10, 0, 0, 0, 0, 0, 32, 0, 0, 0, 16, 0, 0, 0};
			BinaryWriter binaryWriter = new BinaryWriter(fs);
			binaryWriter.Write(buffer, 0, 40);
			ushort[] array = new ushort[16];
			for (int i = 0; i < 16; i++)
			{
				array[i] = (ushort)(((palette.Entries[i].R >> 3) & 0x1F) | (((palette.Entries[i].G >> 3) & 0x1F) << 5) | (((palette.Entries[i].B >> 3) & 0x1F) << 10));
			}
			for (int j = 0; j < 16; j++)
			{
				binaryWriter.Write(array[j]);
			}
		}
	}
}
