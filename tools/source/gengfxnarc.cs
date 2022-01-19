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
using System.Linq.Expressions;

namespace PlatinumSpriteEditor
{
	class MainForm
	{		
		static Rectangle rect;

		public static void Main(string[] args)
		{
			int i, totalMons;
			int palSavedNorm, palSavedShiny, zero;

			int index;

			FileStream ncgr;
			FileStream nclr;

			Bitmap png;

			//Console.WriteLine("{0}", args[0]);

			if (args.Length != 3)
			{
				Console.WriteLine("gengfxnarc converts the gfx folder format to the files directly for use with HGSS Sprites\n\nUsage:  gengfxnarc [path to gfx directory] [path to output directory] [total number of mons]\n");
				return;
			}

			System.IO.Directory.CreateDirectory(args[1]);

			totalMons = int.Parse(args[2]);

			// backf backm frontf frontm pal shinypal
			for (i = 0; i <= totalMons; i++)
			{
				index = i * 6;
				palSavedNorm = 0;
				palSavedShiny = 0;

				ncgr = System.IO.File.OpenWrite(args[1] + "/a004_" + index.ToString("D4")); // female back sprite
				nclr = System.IO.File.OpenWrite(args[1] + "/a004_" + (index + 5).ToString("D4")); // shiny pal

				try
				{
					png = (Bitmap)Image.FromFile(args[0] + "/" + i.ToString("D3") + "/00.png");
				}
				catch (OutOfMemoryException)
				{
					png = null;
				}

				if (png != null)
				{
					SaveBin(ncgr, png);
					SavePal(nclr, StandardizeColors(png));
					palSavedShiny = 1;
				}

				ncgr = System.IO.File.OpenWrite(args[1] + "/a004_" + (index + 1).ToString("D4")); // male back sprite
                //nclr = System.IO.File.OpenWrite(args[1] + "/a004_" + (index + 5).ToString("D4")); // shiny pal

				try
				{
					png = (Bitmap)Image.FromFile(args[0] + "/" + i.ToString("D3") + "/01.png");
				}
				catch (OutOfMemoryException)
				{
					png = null;
				}

				if (png != null)
				{
					SaveBin(ncgr, png);
					if (palSavedShiny <= 0)
					SavePal(nclr, StandardizeColors(png));
				}
					
				ncgr = System.IO.File.OpenWrite(args[1] + "/a004_" + (index + 2).ToString("D4")); // female front sprite
				nclr = System.IO.File.OpenWrite(args[1] + "/a004_" + (index + 4).ToString("D4")); // normal pal

				try
				{
					png = (Bitmap)Image.FromFile(args[0] + "/" + i.ToString("D3") + "/02.png");
				}
				catch (OutOfMemoryException)
				{
					png = null;
				}

				if (png != null)
				{
					SaveBin(ncgr, png);
					SavePal(nclr, StandardizeColors(png));
					palSavedNorm = 1;
				}

				ncgr = System.IO.File.OpenWrite(args[1] + "/a004_" + (index + 3).ToString("D4")); // male front sprite
				//nclr = System.IO.File.OpenWrite(args[1] + "/a004_" + (index + 4).ToString("D4")); // normal pal

				try
				{
					png = (Bitmap)Image.FromFile(args[0] + "/" + i.ToString("D3") + "/03.png");
				}
				catch (OutOfMemoryException)
				{
					png = null;
				}

				if (png != null)
				{
					SaveBin(ncgr, png);
					if (palSavedNorm <= 0)
					SavePal(nclr, StandardizeColors(png));
				}
			}
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