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

			FileStream ncgr;

			Bitmap png;

			//Console.WriteLine("{0}", args[0]);

			if (args.Length != 3)
			{
				Console.WriteLine("geniconnarc converts the icon gfx folder format to the files directly for use with HGSS mon icons\n\nUsage:  geniconnarc [path to gfx directory] [path to output directory] [number of mons]\n");
				return;
			}

			System.IO.Directory.CreateDirectory(args[1]);

			totalMons = int.Parse(args[2]);

			for (i = 7; i <= totalMons + 7; i++)
			{
				ncgr = System.IO.File.OpenWrite(args[1] + "/a020_" + i.ToString("D3")); // icon output file

				try
				{
					png = (Bitmap)Image.FromFile(args[0] + "/" + (i - 7).ToString("D3") + ".png");
				}
				catch (OutOfMemoryException)
				{
					png = null;
				}

				if (png != null)
				{
					SaveBin(ncgr, png);
				}
			}
		}

		const int width = 32;
		const int height = 64;
		const int filesize = width * height;
				
		static void SaveBin(FileStream fs, Bitmap source)
		{
			BinaryWriter binaryWriter = new BinaryWriter(fs);
			rect = new Rectangle(0, 0, width, height);
			BitmapData bitmapData = source.LockBits(rect, ImageLockMode.ReadOnly, source.PixelFormat);
			IntPtr scan = bitmapData.Scan0;
			byte[] array = new byte[filesize + 1], rearray = new byte[filesize + 1];
			Marshal.Copy(scan, array, 0, filesize);
			source.UnlockBits(bitmapData);
			ushort[] array2 = new ushort[filesize / 4];

			int pos = 0;
			for (int tiley = 0; tiley < height / 8; tiley++)
			{
				for (int tilex = 0; tilex < width / 8; tilex++)
				{
					for (int y = 0; y < 8; y++)
					{
						for (int x = 0; x < 8; x++)
						{
							rearray[pos] = GetIndexedPixel(array, x + tilex * 8, y + tiley * 8);
							pos++;
						}
					}
				}
			}
			
			for (int i = 0; i < filesize / 4; i++)
			{
				array2[i] = (ushort)((rearray[i * 4] & 0xF) | ((rearray[i * 4 + 1] & 0xF) << 4) | ((rearray[i * 4 + 2] & 0xF) << 8) | ((rearray[i * 4 + 3] & 0xF) << 12));
			}



			byte[] array4 = new byte[48]
			{0x52, 0x47, 0x43, 0x4E, 0xFF, 0xFE, 0x01, 0x01, 0x30, 0x04, 0x00, 0x00, 0x10, 0x00, 0x01, 0x00, 0x52, 0x41, 0x48, 0x43, 0x20, 0x04, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x03, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00};
			for (int k = 0; k < 48; k++)
			{
				binaryWriter.Write(array4[k]);
			}
			for (int l = 0; l < filesize / 4; l++)
			{
				binaryWriter.Write(array2[l]);
			}
		}

		static byte GetIndexedPixel(byte[] image, int x, int y)
		{
			return image[y * width + x];
		}
	}
}
