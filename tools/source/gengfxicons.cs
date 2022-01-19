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
			int i, totalMons;

			//Console.WriteLine("{0}", args[0]);

			if (args.Length != 3)
			{
				Console.WriteLine("gengfxicons converts Nintendo's ncgr format to pngs for use with icons specifically\n\nUsage:  gengfxicons [path to unpacked a020] [path to output directory] [total number of mons]\n");
				return;
			}

			System.IO.Directory.CreateDirectory(args[1]);

			FileStream palList = System.IO.File.OpenRead("rawdata/iconpalettetable.bin"); // tired of making everything super portable.  set it up correctly and you won't have to deal with anything.
			FileStream nclr = System.IO.File.OpenRead(args[0] + "/a020_000"); // all of the palettes

			totalMons = int.Parse(args[2]) + 7;

			// backf backm frontf frontm pal shinypal
			for (i = 7; i <= totalMons; i++)
			{
				Bitmap png;
				BinaryReader binaryReader = new BinaryReader(palList);
				int species = i - 7;
				int palNum = binaryReader.ReadByte();

				FileStream ncgr = System.IO.File.OpenRead(args[0] + "/a020_" + i.ToString("D3"));

				if (ncgr.Length > 0)
				{
					png = MakeImage(ncgr);
					png.Palette = SetPal(nclr, palNum);
				}
				else
					png = null;

				SavePNG(png, args[1] + "/" + species.ToString("D3") + ".png");
			}
		}

		const int width = 32;
		const int height = 64;
		const int filesize = width * height;

		static Bitmap MakeImage(FileStream fs)
		{
			fs.Seek(48L, SeekOrigin.Begin);
			BinaryReader binaryReader = new BinaryReader(fs);
			UInt16[] array = new UInt16[filesize / 4];
			for (int i = 0; i < filesize / 4; i++)
			{
				array[i] = binaryReader.ReadUInt16();
			}

			Bitmap r_bitmap = new Bitmap(width, height, PixelFormat.Format8bppIndexed);
			rect = new Rectangle(0, 0, width, height);
			byte[] array3 = new byte[filesize + 1], array4 = new byte[filesize + 1]; // +2 prevents reading beyond end of file apparently

			for (int k = 0; k < filesize / 4; k += 2)
			{
				array3[k * 4] = (byte)((array[(k)]) & 0xF);
				array3[k * 4 + 1] = (byte)((array[(k)] >> 4) & 0xF);
				array3[k * 4 + 2] = (byte)((array[(k)] >> 8) & 0xF);
				array3[k * 4 + 3] = (byte)((array[(k)] >> 12) & 0xF);
				array3[k * 4 + 4] = (byte)((array[(k + 1)]) & 0xF);
				array3[k * 4 + 5] = (byte)((array[(k + 1)] >> 4) & 0xF);
				array3[k * 4 + 6] = (byte)((array[(k + 1)] >> 8) & 0xF);
				array3[k * 4 + 7] = (byte)((array[(k + 1)] >> 12) & 0xF);
			}

			int pos = 0;
			for (int tiley = 0; tiley < height / 8; tiley++)
			{
				for (int tilex = 0; tilex < width / 8; tilex++)
				{
					for (int y = 0; y < 8; y++)
					{
						for (int x = 0; x < 8; x++)
						{
							SetIndexedPixel(array4, array3, x + tilex * 8, y + tiley * 8, pos);
							pos++;
						}
					}
				}
			}

			BitmapData bitmapData = r_bitmap.LockBits(rect, ImageLockMode.WriteOnly, r_bitmap.PixelFormat);
			IntPtr scan = bitmapData.Scan0;
			Marshal.Copy(array4, 0, scan, filesize);
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

		static byte[] SetIndexedPixel(byte[] retimage, byte[] srcimage, int x, int y, int position)
		{
			retimage[y * width + x] = srcimage[position];

			return retimage;
		}
		
		static ColorPalette SetPal(FileStream fs, int palNum)
		{
			fs.Seek((long)(40 + (palNum * 32)), SeekOrigin.Begin);
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
		
		static void SavePNG(Bitmap image, string filename)
		{
			if (image != null)
			{
				IndexedBitmapHandler Handler = new IndexedBitmapHandler();
				byte[] array = Handler.GetArray(image);
				Bitmap temp = Handler.MakeImage(image.Width, image.Height, array, image.PixelFormat);
				ColorPalette cleaned = Handler.CleanPalette(image);
				temp.Palette = cleaned;
				temp.Save(filename, ImageFormat.Png);
			}
			else
			{
				System.IO.File.Create(filename);
			}
		}
	}
}
