using System;
using System.Diagnostics;
using System.IO;
using System.Runtime.CompilerServices;

namespace Swav2Swar
{
	public partial class Principal {

		static private byte[] CabeceraSwar;

		// Token: 0x06000001 RID: 1 RVA: 0x0000477C File Offset: 0x00002B7C
		static void Main(string[] args) {
			CabeceraSwar = new byte[]
			{
				83,
				87,
				65,
				82,
				byte.MaxValue,
				254,
				0,
				1,
				238,
				238,
				0,
				0,
				16,
				0,
				1,
				0,
				68,
				65,
				84,
				65,
				238,
				238,
				238,
				238,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				1,
				0,
				0,
				byte.MaxValue
			};


			if (args.Length == 0) {
				Console.WriteLine("swav2swar puts a bunch of swavs into a swar file.\nUsage:  swav2swar [... swav list ...] [swar file]");
			} else {
				CrearSwar_Click(args);
			}
		}

		// Token: 0x06000062 RID: 98 RVA: 0x00006978 File Offset: 0x00004D78
		static private void CrearSwar_Click(string[] args) {
			checked {
				if (args.Length > 0) {
					bool flag = false;
					int num = 60;
					int num2 = CabeceraSwar.Length - 1 + 4 * (args.Length - 1);
					byte[] array = new byte[num2 + 1];
					Array.Copy(CabeceraSwar, array, CabeceraSwar.Length - 1);
					int num3 = num2 + 1;
					int num4 = 0;
					int num5 = args.Length - 2;
					for (int i = num4; i <= num5; i++) {
						byte[] array2 = File.ReadAllBytes(args[i]);
						int num6 = array2.Length - 25;
						//array = (byte[])Utils.CopyArray((Array)array, new byte[array.Length + num6 + 1]); // what the fuck is this
						array = AddLengthToByteArray(array, num6 + 1);
                        byte[] bytes1 = BitConverter.GetBytes(num3);
						int num7 = 0;
						int num8 = bytes1.Length - 1;
						for (int j = num7; j <= num8; j++) {
							array[num + j] = bytes1[j];
						}
						num += 4;
						Array.Copy(array2, 24, array, num3, num6 + 1);
						num3 = array.Length;
					}
					byte[] bytes = BitConverter.GetBytes(array.Length);
					int num9 = 0;
					int num10 = bytes.Length - 1;
					for (int k = num9; k <= num10; k++) {
						array[8 + k] = bytes[k];
					}
					bytes = BitConverter.GetBytes(array.Length - 16);
					int num11 = 0;
					int num12 = bytes.Length - 1;
					for (int l = num11; l <= num12; l++) {
						array[20 + l] = bytes[l];
					}
					bytes = BitConverter.GetBytes(args.Length - 1);
					int num13 = 0;
					int num14 = bytes.Length - 1;
					for (int m = num13; m <= num14; m++) {
						array[56 + m] = bytes[m];
					}
					File.WriteAllBytes(args[args.Length - 1], array);
				}
			}
		}
        
        static public byte[] AddLengthToByteArray(byte[] bArray, int addSize)
        {
            byte[] newArray = new byte[bArray.Length + addSize];
            bArray.CopyTo(newArray, 0);
            return newArray;
        }
	}
}
