using System;
using System.Drawing;
using System.Drawing.Imaging;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using System.Diagnostics;

namespace PlatinumSpriteEditor
{
	public class IndexedBitmapHandler
	{
		public IndexedBitmapHandler()
		{
		}

		public Bitmap Convert(Bitmap source, PixelFormat target)
		{
			if ((source.PixelFormat == target)||(target == PixelFormat.DontCare))
				return source;
			Bitmap image = new Bitmap(source.Width, source.Height, target);
			if ((source.PixelFormat == PixelFormat.Format4bppIndexed) && (target == PixelFormat.Format8bppIndexed))
			{
				byte[] array = GetArray(source);
				byte[] array2 = new byte[(array.Length*2)];
				byte current;
				for (int i=0; i<array.Length; i++)
				{
					current = array[i];
					array2[2*i] = (byte)((current & 0xF0) >> 4);
					array2[2*i+1] = (byte)((current & 0x0F));
				}
				image = MakeImage(source.Width, source.Height, array2, target);
				image.Palette = source.Palette;
			}
			if (((source.PixelFormat == PixelFormat.Format24bppRgb) || (source.PixelFormat == PixelFormat.Format32bppArgb)) && (target == PixelFormat.Format8bppIndexed))
			{
				int skip = 3;
				if (source.PixelFormat == PixelFormat.Format32bppArgb)
					skip = 4;
				Color[] newPalette = new Color[256];
				byte[] array = new byte[source.Width*source.Height];
				byte[] sourceArray = GetArray(source);
				Color Pixel = Color.FromArgb(sourceArray[2], sourceArray[1], sourceArray[0]);
				newPalette[0] = Pixel;
				int index = 1;
				array[0] = 0;
				byte r = 0;
				byte g = 0;
				byte b = 0;
				bool match = false;
				for (int i=1; i<(source.Width*source.Height); i++)
				{
					b = sourceArray[(i * skip)];
					g = sourceArray[(i * skip + 1)];
					r = sourceArray[(i * skip + 2)];
					Pixel = Color.FromArgb(r, g, b);
					for (int j=0; j<index; j++)
					{
						if (Pixel == newPalette[j])
						{
							array[i] = (byte)j;
							match = true;
							break;
						}
					}
					if (!match)
					{
						if (index >= 256)
						{
							MessageBox.Show("Conversion failed");
							return null;
						}
						newPalette[index] = Pixel;
						array[i] = (byte)index;
						index++;
					}
					match = false;
				}
				image = MakeImage(source.Width, source.Height, array, target);
				ColorPalette oldPalette = image.Palette;
				for (int i=0; i<index; i++)
				{
					oldPalette.Entries[i] = newPalette[i];
				}
				image.Palette = oldPalette;
			}
			return image;
		}

		public Bitmap Resize(Bitmap source, int top, int bottom, int left, int right)
		{
			int newWidth = source.Width + left + right;
			int newHeight = source.Height + top + bottom;
			int arraysize = newWidth * newHeight;
			ColorPalette palette = source.Palette;

			byte[] source_array = GetArray(source);

			byte[] byte_array = new byte[arraysize];
			byte background = source_array[0];

			int source_index = 0;
			int index = 0;
			for (int j=0; j<newHeight; j++)
			{
				for (int i=0; i<newWidth; i++)
				{
					if (i<left||i>=(left+source.Width)||j<top||j>=(top+source.Height))
						byte_array[index] = background;
					else
					{
						source_index = ((j-top)*source.Width)+i-left;
						byte_array[index] = source_array[source_index];
					}
					index++;
				}
			}
			Bitmap newImage = MakeImage(newWidth, newHeight, byte_array, PixelFormat.Format8bppIndexed);
			newImage.Palette = palette;
			return newImage;
		}

		public Bitmap Concat(Bitmap first, Bitmap second)
		{
			int newWidth = first.Width + second.Width;
			int newHeight = first.Height;
			if (first.Height < second.Height)
				newHeight = second.Height;
			int arraysize = newWidth * newHeight;
			ColorPalette palette = first.Palette;

			byte[] first_array = GetArray(first);
			byte[] second_array = GetArray(second);

			byte[] byte_array = new byte[arraysize];
			byte background = first_array[0];

			int source_index = 0;
			int index = 0;
			for (int j=0; j<newHeight; j++)
			{
				for (int i=0; i<first.Width; i++)
				{
					if (j>first.Height)
						byte_array[index] = background;
					else
					{
						source_index = ((j*first.Width)+i);
						byte_array[index] = first_array[source_index];
					}
					index++;
				}
				for (int i=0; i<second.Width; i++)
				{
					if (j>second.Height)
						byte_array[index] = background;
					else
					{
						source_index = ((j*second.Width)+i);
						byte_array[index] = second_array[source_index];
					}
					index++;
				}
			}
			Bitmap newImage = MakeImage(newWidth, newHeight, byte_array, PixelFormat.Format8bppIndexed);
			newImage.Palette = palette;
			return newImage;
		}

		public Bitmap[] Split(Bitmap source, int tilewidth, int tileheight)
		{
			int maxTiles = (source.Width / tilewidth) * (source.Height / tileheight);
			Bitmap[] tiles = new Bitmap[maxTiles];
			int index = 0;
			int x_index = 0;
			int y_index = 0;
			while (y_index + tileheight <= source.Height)
			{
				if (x_index + tilewidth <= source.Width)
				{
					tiles[index] = Resize(source, (y_index * -1), ((source.Height - y_index - tileheight) * -1), (x_index * -1), ((source.Width - x_index - tilewidth) * -1));
					index++;
				}
				x_index += tilewidth;
				if (x_index + tilewidth > source.Width)
				{
					y_index += tileheight;
					x_index = 0;
				}
			}
			return tiles;
		}

		public Bitmap ShrinkImage(Bitmap image, int x_scale, int y_scale)
		{
			byte[] array = GetArray(image);
			ColorPalette palette = image.Palette;
			int new_width = image.Width / x_scale;
			int new_height = image.Height / y_scale;
			byte[] array2 = new byte[new_width * new_height];
			for (int j=0; j<new_height; j++)
			{
				for (int i=0; i<new_width; i++)
				{
					array2[j*new_width+i] = array[y_scale*j*image.Width+i*x_scale];
				}
			}
			Bitmap temp = MakeImage(new_width, new_height, array2, image.PixelFormat);
			temp.Palette = palette;
			return temp;
		}

		public ColorPalette AlternatePalette(Bitmap parent, Bitmap child)
		{
			Bitmap temp = new Bitmap(1, 1, parent.PixelFormat);
			ColorPalette newPalette = temp.Palette;
			ColorPalette ChildPalette = child.Palette;
			byte[] ParentArray = GetArray(parent);
			byte[] ChildArray = GetArray(child);
			if (ParentArray.Length != ChildArray.Length)
				return null;
			for (int i=0; i<ChildPalette.Entries.Length; i++)
			{
				for (int j=0; j<ParentArray.Length; j++)
				{
					if (ParentArray[j] == i)
					{
						newPalette.Entries[i] = ChildPalette.Entries[ChildArray[j]];
						break;
					}
				}
			}
			return newPalette;
		}

		public Bitmap PaletteMatch(ColorPalette parent, Bitmap child, bool[] used = null)
		{
			if (parent.Entries == child.Palette.Entries)
				return child;
			if (used == null)
			{
				used = new bool[parent.Entries.Length];
				for (int i=0; i<parent.Entries.Length; i++)
					used[i] = true;
			}
			Bitmap image = ShrinkPalette(child);
			Bitmap temp = new Bitmap(1, 1, child.PixelFormat);
			ColorPalette childPalette = image.Palette;
			ColorPalette newPalette = temp.Palette;
			int size = PaletteSize(image);
			byte[] array = GetArray(image);
			byte[] indexof = new byte[size];
			bool[] NotFound = new bool[size];
			for (int i=0; i<size; i++)
				NotFound[i] = true;
			for (int i=0; i<size; i++)
			{
				for (int j=0; j<parent.Entries.Length; j++)
				{
					if (parent.Entries[j] == childPalette.Entries[i])
					{
						indexof[i] = (byte)j;
						NotFound[i] = false;
						break;
					}
				}
			}
			int maxsize = 0;
			for (int i=0; i<parent.Entries.Length; i++)
			{
				if (used[i])
				{
					newPalette.Entries[i] = parent.Entries[i];
					maxsize++;
				}
			}
			for (int i=0; i<size; i++)
			{
				if (NotFound[i])
					maxsize++;
			}
			for (int i=0; i<maxsize; i++)
			{
				if ((i<used.Length) && (used[i]))
					continue;
				for (int j=0; j<size; j++)
				{
					if (NotFound[j])
					{
						indexof[j] = (byte)i;
						newPalette.Entries[i] = childPalette.Entries[j];
						NotFound[j] = false;
						break;
					}
				}
			}
			byte[] newArray = new byte[array.Length];
			for (int i=0; i<array.Length; i++)
			{
				newArray[i] = indexof[array[i]];
			}
			image = MakeImage(child.Width, child.Height, newArray, child.PixelFormat);
			image.Palette = newPalette;
			return image;
		}

		public Bitmap ShrinkPalette(Bitmap image, bool[] used = null)
		{
			used = IsUsed(image, used);
			byte[] array = GetArray(image);
			ColorPalette oldPalette = image.Palette;
			Bitmap temp = new Bitmap(image.Width, image.Height, image.PixelFormat);
			ColorPalette newPalette = temp.Palette;
			int size = oldPalette.Entries.Length;
			int index = 0;
			int unused = 0;
			byte[] indexof = new byte[size];
			for (int i=0; i<size; i++)
			{
				if (used[i])
				{
					newPalette.Entries[index] = oldPalette.Entries[i];
					indexof[i] = (byte)index;
					index++;
				}
				else
					unused++;
			}
			if (unused == 0 || unused == size)
				return image;
			byte[] newArray = new byte[array.Length];
			for (int i=0; i<array.Length; i++)
			{
				newArray[i] = indexof[array[i]];
			}
			image = MakeImage(image.Width, image.Height, newArray, image.PixelFormat);
			image.Palette = newPalette;
			return image;
		}

		public bool[] IsUsed(Bitmap image, bool[] used = null)
		{
			byte[] array = GetArray(image);
			int size = image.Palette.Entries.Length;
			if (used == null)
			{
				used = new bool[size];
				for (int i=0; i<size; i++)
				{
					used[i] = false;
				}
			}
			if (size > used.Length)
			{
				bool[] temp = new bool[size];
				for (int i=0; i<size; i++)
				{
					if (i < used.Length)
						temp[i] = used[i];
					else
						temp[i] = false;
				}
				used = temp;
			}
			for (int i=0; i<array.Length; i++)
			{
				used[array[i]] = true;
			}
			return used;
		}

		public byte PaletteSize(Bitmap image)
		{
			byte[] array = GetArray(image);
			byte max = 0;
			for (int i=0; i<array.Length; i++)
			{
				if (array[i] > max)
					max = array[i];
			}
			return (byte)(max+1);
		}

		public bool PaletteEquals(ColorPalette parent, Bitmap child)
		{
			bool Match = true;
			int max = PaletteSize(child);
			for (int i=0; i<max; i++)
			{
				if (parent.Entries[i] != child.Palette.Entries[i])
					Match = false;
			}
			return Match;
		}

		public ColorPalette CleanPalette(Bitmap image)
		{
			int used = PaletteSize(image);
			ColorPalette temp = image.Palette;
			for (int i=used; i<image.Palette.Entries.Length; i++)
				temp.Entries[i] = Color.FromArgb(0, 0, 0);
			return temp;
		}

		public byte[] GetArray(Bitmap target)
		{
			int Width = target.Width;
			if (target.PixelFormat == PixelFormat.Format1bppIndexed)
				Width = Width / 8;
			if (target.PixelFormat == PixelFormat.Format4bppIndexed)
				Width = Width / 2;
			if ((target.PixelFormat == PixelFormat.Format16bppArgb1555) || (target.PixelFormat == PixelFormat.Format16bppGrayScale) || (target.PixelFormat == PixelFormat.Format16bppRgb555) || (target.PixelFormat == PixelFormat.Format16bppRgb565))
				Width = Width * 2;
			if (target.PixelFormat == PixelFormat.Format24bppRgb)
				Width = Width * 3;
			if ((target.PixelFormat == PixelFormat.Format32bppRgb) || (target.PixelFormat == PixelFormat.Format32bppArgb) || (target.PixelFormat == PixelFormat.Format32bppPArgb))
				Width = Width * 4;
			byte[] array = new byte[Width * target.Height];
			Rectangle rect = new Rectangle(0, 0, target.Width, target.Height);
			BitmapData sourceData = target.LockBits(rect, ImageLockMode.ReadOnly, target.PixelFormat);
			IntPtr scan = sourceData.Scan0;
			Marshal.Copy(scan, array, 0, Width*target.Height);
			target.UnlockBits(sourceData);
			return array;
		}

		public Bitmap MakeImage(int width, int height, byte[] array, PixelFormat format)
		{
			Bitmap image = new Bitmap(width, height, format);
			Rectangle rect = new Rectangle(0, 0, width, height);
			BitmapData imageData = image.LockBits(rect, ImageLockMode.WriteOnly, image.PixelFormat);
			IntPtr scan = imageData.Scan0;
			Marshal.Copy(array, 0, scan, (width * height));
			image.UnlockBits(imageData);
			return image;
		}
	}
}