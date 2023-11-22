using System;
using System.Windows.Forms;

namespace BTX_Editor
{
	// Token: 0x02000004 RID: 4
	internal static class Program
	{
		// Token: 0x0600000F RID: 15 RVA: 0x00002FD3 File Offset: 0x000011D3
		//[STAThread]
		private static void Main(string[] args)
		{
			//Application.EnableVisualStyles();
			//Application.SetCompatibleTextRenderingDefault(false);
			//Application.Run(new Form1(args));
			new Btx0ToPng(args);
		}

		// Token: 0x0400000E RID: 14
		public static uint PaletteIndex;

		// Token: 0x0400000F RID: 15
		public static uint PaletteCount;

		// Token: 0x04000010 RID: 16
		public static uint PaletteSize;

		// Token: 0x04000011 RID: 17
		public static uint ColorCount;

		// Token: 0x04000012 RID: 18
		public static uint ImageOffset;

		// Token: 0x04000013 RID: 19
		public static uint PaletteOffset;

		// Token: 0x04000014 RID: 20
		public static uint ImageWidth;

		// Token: 0x04000015 RID: 21
		public static uint ImageHeight;
	}
}
