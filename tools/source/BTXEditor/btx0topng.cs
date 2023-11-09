using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Windows.Forms;

namespace BTX_Editor
{
	// Token: 0x02000003 RID: 3
	public class Btx0ToPng
	{
		// Token: 0x06000004 RID: 4 RVA: 0x0000246B File Offset: 0x0000066B
		public Btx0ToPng(string[] args)
		{
			if (args.Length != 2)
			{
				Console.WriteLine("btx0topng extracts the overworld textures from a btx0 in hgss' a081 narc.\nUsage:  btx0topng [btx0 file] [png file]");
			}
			this.BTXFile = File.ReadAllBytes(args[0]);
			this.bm = BTX0.Read(this.BTXFile);
			if (this.bm != null)
			{
				this.bm.Save(args[1]);

				if (Program.PaletteSize == 64U && Program.PaletteCount == 2U) // if there's a shiny palette.  on importing, the shiny image will only be used for the palette!
				{
					String targetFile = args[1];
					Program.PaletteIndex = 1U;

					if (targetFile.Contains(".png"))
					{
						targetFile = targetFile.Substring(0, targetFile.Length - ".png".Length);
					}

					this.bm = BTX0.Read(this.BTXFile);
					this.bm.Save(targetFile + "_shiny.png");
				}
			}
			else
			{
				Console.WriteLine("This file is not supported.");
			}
		}

		// Token: 0x06000005 RID: 5 RVA: 0x0000247C File Offset: 0x0000067C
		private void button_Open_Click(object sender, EventArgs e)
		{
			OpenFileDialog openFileDialog = new OpenFileDialog();
			openFileDialog.Title = "Open";
			openFileDialog.Filter = "BTX (*.btx; *.btx0)|*.btx;*.btx0";
			if (openFileDialog.ShowDialog() == DialogResult.OK)
			{
// 				this.button_Save.Enabled = false;
// 				this.button_Export.Enabled = false;
// 				this.button_Import.Enabled = false;
// 				this.checkBox_Shiny.Enabled = false;
// 				this.checkBox_Shiny.Checked = false;
				this.BTXFile = File.ReadAllBytes(openFileDialog.FileName);
				this.bm = BTX0.Read(this.BTXFile);
				if (this.bm != null)
				{
// 					this.button_Save.Enabled = true;
// 					this.button_Export.Enabled = true;
// 					this.button_Import.Enabled = true;
// 					if (Program.PaletteSize == 64U && Program.PaletteCount == 2U)
// 					{
// 						this.checkBox_Shiny.Enabled = true;
// 					}
// 					this.pictureBox1.Width = this.bm.Width;
// 					this.pictureBox1.Height = this.bm.Height;
// 					this.pictureBox1.Image = this.bm;
					return;
				}
				MessageBox.Show("This file is not supported.", "Information", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
			}
		}

		// Token: 0x06000006 RID: 6 RVA: 0x000025AC File Offset: 0x000007AC
		private void button_Save_Click(object sender, EventArgs e)
		{
			SaveFileDialog saveFileDialog = new SaveFileDialog();
			saveFileDialog.Title = "Save As";
			saveFileDialog.Filter = "BTX (*.btx; *.btx0)|*.btx;*.btx0";
			if (saveFileDialog.ShowDialog() == DialogResult.OK)
			{
				File.WriteAllBytes(saveFileDialog.FileName, this.BTXFile);
			}
		}

		// Token: 0x06000007 RID: 7 RVA: 0x000025F0 File Offset: 0x000007F0
		private void button_Export_Click(object sender, EventArgs e)
		{
			SaveFileDialog saveFileDialog = new SaveFileDialog();
			saveFileDialog.Title = "Save As";
			saveFileDialog.Filter = "PNG (*.png)|*.png";
			if (saveFileDialog.ShowDialog() == DialogResult.OK)
			{
				this.bm.Save(saveFileDialog.FileName);
			}
		}

		// Token: 0x06000008 RID: 8 RVA: 0x00002634 File Offset: 0x00000834
		private void button_Import_Click(object sender, EventArgs e)
		{
			OpenFileDialog openFileDialog = new OpenFileDialog();
			openFileDialog.Title = "Open";
			openFileDialog.Filter = "PNG (*.png)|*.png";
			if (openFileDialog.ShowDialog() == DialogResult.OK)
			{
				Bitmap bitmap = new Bitmap(openFileDialog.FileName);
				if (this.bm.Width == bitmap.Width && this.bm.Height == bitmap.Height)
				{
					if (this.GetColorCount(bitmap) <= Program.ColorCount)
					{
						this.BTXFile = BTX0.Write(this.BTXFile, bitmap);
						this.bm = BTX0.Read(this.BTXFile);
// 						this.pictureBox1.Image = this.bm;
						return;
					}
					MessageBox.Show(string.Concat(new object[]
					{
						"Too many colors!\nBTX: ",
						Program.ColorCount,
						"\nPNG: ",
						this.GetColorCount(bitmap)
					}), "Information", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
					return;
				}
				else
				{
					MessageBox.Show(string.Concat(new object[]
					{
						"Not the same size!\nBTX: ",
						this.bm.Width,
						"x",
						this.bm.Height,
						"\nPNG: ",
						bitmap.Width,
						"x",
						bitmap.Height
					}), "Information", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
				}
			}
		}

		// Token: 0x06000009 RID: 9 RVA: 0x000027A8 File Offset: 0x000009A8
		private void checkBox_Shiny_CheckedChanged(object sender, EventArgs e)
		{
// 			if (this.checkBox_Shiny.Checked)
// 			{
// 				Program.PaletteIndex = 1U;
// 			}
// 			else
// 			{
// 				Program.PaletteIndex = 0U;
// 			}
// 			if (this.checkBox_Shiny.Enabled)
// 			{
// 				this.bm = BTX0.Read(this.BTXFile);
// 				this.pictureBox1.Image = this.bm;
// 			}
		}

		// Token: 0x0600000A RID: 10 RVA: 0x00002800 File Offset: 0x00000A00
		private uint GetColorCount(Bitmap temp)
		{
			HashSet<Color> hashSet = new HashSet<Color>();
			uint num = 0U;
			uint num2 = 0U;
			for (int i = 0; i < temp.Width * temp.Height; i++)
			{
				hashSet.Add(temp.GetPixel((int)num, (int)num2));
				num += 1U;
				if ((ulong)num >= (ulong)((long)temp.Width))
				{
					num = 0U;
					num2 += 1U;
				}
			}
			return (uint)hashSet.Count;
		}

		// Token: 0x0600000B RID: 11 RVA: 0x0000285C File Offset: 0x00000A5C
		private void button1_Click(object sender, EventArgs e)
		{
			this.files = Directory.GetFiles("C:/Users/Kazo/Desktop/BTX/", "*.btx0", SearchOption.TopDirectoryOnly);
// 			this.comboBox1.Items.Clear();
// 			for (int i = 0; i < this.files.Length; i++)
// 			{
// 				this.comboBox1.Items.Add(i);
// 			}
		}

		// Token: 0x0600000C RID: 12 RVA: 0x000028BC File Offset: 0x00000ABC
		private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
		{
// 			this.button_Save.Enabled = false;
// 			this.button_Export.Enabled = false;
// 			this.button_Import.Enabled = false;
// 			this.checkBox_Shiny.Enabled = false;
// 			this.checkBox_Shiny.Checked = false;
// 			this.BTXFile = File.ReadAllBytes(this.files[this.comboBox1.SelectedIndex]);
			this.bm = BTX0.Read(this.BTXFile);
			if (this.bm != null)
			{
// 				this.button_Save.Enabled = true;
// 				this.button_Export.Enabled = true;
// 				this.button_Import.Enabled = true;
// 				if (Program.PaletteSize == 64U && Program.PaletteCount == 2U)
// 				{
// 					this.checkBox_Shiny.Enabled = true;
// 				}
// 				this.pictureBox1.Width = this.bm.Width;
// 				this.pictureBox1.Height = this.bm.Height;
// 				this.pictureBox1.Image = this.bm;
				return;
			}
			MessageBox.Show("This file is not supported.", "Information", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
		}

		// Token: 0x04000001 RID: 1
		private Bitmap bm;

		// Token: 0x04000002 RID: 2
		private byte[] BTXFile;

		// Token: 0x04000003 RID: 3
		private string[] files;

		private void panel1_Paint(object sender, PaintEventArgs e)
		{

		}
	}
}
