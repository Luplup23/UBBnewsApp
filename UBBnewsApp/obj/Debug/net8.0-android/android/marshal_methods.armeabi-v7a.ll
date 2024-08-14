; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [344 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [682 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 26230656, ; 3: Microsoft.Extensions.DependencyModel => 0x1903f80 => 192
	i32 32687329, ; 4: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 264
	i32 34715100, ; 5: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 298
	i32 34839235, ; 6: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 38948123, ; 7: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 306
	i32 39109920, ; 8: Newtonsoft.Json.dll => 0x254c520 => 216
	i32 39485524, ; 9: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42244203, ; 10: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 315
	i32 42639949, ; 11: System.Threading.Thread => 0x28aa24d => 145
	i32 52239042, ; 12: HtmlAgilityPack => 0x31d1ac2 => 174
	i32 66541672, ; 13: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 14: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 339
	i32 68219467, ; 15: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 16: Microsoft.Maui.Graphics.dll => 0x44bb714 => 215
	i32 82292897, ; 17: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 83839681, ; 18: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 323
	i32 98325684, ; 19: Microsoft.Extensions.Diagnostics.Abstractions => 0x5dc54b4 => 194
	i32 101534019, ; 20: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 282
	i32 117431740, ; 21: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 22: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 282
	i32 122350210, ; 23: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 24: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 302
	i32 136584136, ; 25: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 338
	i32 140062828, ; 26: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 331
	i32 142721839, ; 27: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 28: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 29: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 30: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 238
	i32 176265551, ; 31: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 32: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 284
	i32 184328833, ; 33: System.ValueTuple.dll => 0xafca281 => 151
	i32 205061960, ; 34: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 35: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 236
	i32 220171995, ; 36: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 221958352, ; 37: Microsoft.Extensions.Diagnostics.dll => 0xd3ad0d0 => 193
	i32 230216969, ; 38: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 258
	i32 230752869, ; 39: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 40: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 41: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 42: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 261689757, ; 43: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 241
	i32 276479776, ; 44: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 45: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 260
	i32 280482487, ; 46: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 257
	i32 291076382, ; 47: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 48: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 49: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 336
	i32 318968648, ; 50: Xamarin.AndroidX.Activity.dll => 0x13031348 => 227
	i32 321597661, ; 51: System.Numerics => 0x132b30dd => 83
	i32 321963286, ; 52: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 314
	i32 342366114, ; 53: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 259
	i32 347068432, ; 54: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 220
	i32 360082299, ; 55: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 56: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 57: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 58: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 59: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 60: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 61: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 62: _Microsoft.Android.Resource.Designer => 0x17969339 => 340
	i32 403441872, ; 63: WindowsBase => 0x180c08d0 => 165
	i32 409257351, ; 64: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 334
	i32 441335492, ; 65: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 242
	i32 442565967, ; 66: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 67: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 255
	i32 451504562, ; 68: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 69: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 70: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 71: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 72: System.dll => 0x1bff388e => 164
	i32 476646585, ; 73: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 257
	i32 486930444, ; 74: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 270
	i32 489220957, ; 75: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 312
	i32 498788369, ; 76: System.ObjectModel => 0x1dbae811 => 84
	i32 513247710, ; 77: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 209
	i32 515605794, ; 78: UBBnewsApp => 0x1ebb8522 => 0
	i32 525008092, ; 79: SkiaSharp.dll => 0x1f4afcdc => 217
	i32 526420162, ; 80: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 81: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 302
	i32 530272170, ; 82: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 538707440, ; 83: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 333
	i32 539058512, ; 84: Microsoft.Extensions.Logging => 0x20216150 => 200
	i32 540030774, ; 85: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 86: System.Runtime.Extensions => 0x2080b118 => 103
	i32 545795345, ; 87: Microsoft.Extensions.Logging.Configuration.dll => 0x20882d11 => 202
	i32 546455878, ; 88: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 89: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 90: Jsr305Binding => 0x213954e7 => 295
	i32 569601784, ; 91: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 293
	i32 577335427, ; 92: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 601371474, ; 93: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 94: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 95: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 96: Xamarin.AndroidX.CustomView => 0x2568904f => 247
	i32 627931235, ; 97: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 325
	i32 639843206, ; 98: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 253
	i32 643868501, ; 99: System.Net => 0x2660a755 => 81
	i32 662205335, ; 100: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 101: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 289
	i32 666292255, ; 102: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 234
	i32 672442732, ; 103: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 104: System.Net.Security => 0x28bdabca => 73
	i32 690569205, ; 105: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 106: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 304
	i32 692151471, ; 107: Microsoft.Extensions.Logging.Console.dll => 0x294164af => 203
	i32 693804605, ; 108: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 109: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 110: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 299
	i32 700358131, ; 111: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 720511267, ; 112: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 303
	i32 722857257, ; 113: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 731701662, ; 114: Microsoft.Extensions.Options.ConfigurationExtensions => 0x2b9ce19e => 208
	i32 735137430, ; 115: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 748832960, ; 116: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 218
	i32 752232764, ; 117: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 118: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 224
	i32 759454413, ; 119: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 120: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 121: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 122: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 331
	i32 789151979, ; 123: Microsoft.Extensions.Options => 0x2f0980eb => 207
	i32 790371945, ; 124: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 248
	i32 804715423, ; 125: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 126: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 262
	i32 823281589, ; 127: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 128: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 129: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 130: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 131: Xamarin.AndroidX.Print => 0x3246f6cd => 275
	i32 869139383, ; 132: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 316
	i32 873119928, ; 133: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 134: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 135: System.Net.Http.Json => 0x3463c971 => 63
	i32 880668424, ; 136: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 330
	i32 904024072, ; 137: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 138: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 918734561, ; 139: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 327
	i32 928116545, ; 140: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 298
	i32 952186615, ; 141: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 955402788, ; 142: Newtonsoft.Json => 0x38f24a24 => 216
	i32 956575887, ; 143: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 303
	i32 961460050, ; 144: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 320
	i32 966729478, ; 145: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 296
	i32 967690846, ; 146: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 259
	i32 975236339, ; 147: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 148: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 149: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 150: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 990727110, ; 151: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 329
	i32 992768348, ; 152: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 153: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 999186168, ; 154: Microsoft.Extensions.FileSystemGlobbing.dll => 0x3b8e5ef8 => 197
	i32 1001831731, ; 155: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 156: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 279
	i32 1019214401, ; 157: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 158: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 191
	i32 1031528504, ; 159: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 297
	i32 1035644815, ; 160: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 232
	i32 1036536393, ; 161: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1043950537, ; 162: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 310
	i32 1044663988, ; 163: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1048425084, ; 164: Microsoft.Extensions.Logging.EventSource => 0x3e7db27c => 206
	i32 1048992957, ; 165: Microsoft.Extensions.Diagnostics.Abstractions.dll => 0x3e865cbd => 194
	i32 1052210849, ; 166: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 266
	i32 1067306892, ; 167: GoogleGson => 0x3f9dcf8c => 173
	i32 1082857460, ; 168: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1083032757, ; 169: Microsoft.Extensions.Logging.EventLog.dll => 0x408dc4b5 => 205
	i32 1084122840, ; 170: Xamarin.Kotlin.StdLib => 0x409e66d8 => 300
	i32 1089913930, ; 171: System.Diagnostics.EventLog.dll => 0x40f6c44a => 222
	i32 1098259244, ; 172: System => 0x41761b2c => 164
	i32 1106973742, ; 173: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x41fb142e => 187
	i32 1108272742, ; 174: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 332
	i32 1110309514, ; 175: Microsoft.Extensions.Hosting.Abstractions => 0x422dfa8a => 199
	i32 1117529484, ; 176: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 326
	i32 1118262833, ; 177: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 322
	i32 1121599056, ; 178: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 265
	i32 1127624469, ; 179: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 204
	i32 1149092582, ; 180: Xamarin.AndroidX.Window => 0x447dc2e6 => 292
	i32 1157931901, ; 181: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 177
	i32 1168523401, ; 182: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 328
	i32 1170634674, ; 183: System.Web.dll => 0x45c677b2 => 153
	i32 1173126369, ; 184: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 195
	i32 1175144683, ; 185: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 288
	i32 1178241025, ; 186: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 273
	i32 1202000627, ; 187: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 177
	i32 1204270330, ; 188: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 234
	i32 1204575371, ; 189: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 181
	i32 1208641965, ; 190: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 191: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1243150071, ; 192: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 293
	i32 1253011324, ; 193: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 194: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 308
	i32 1264511973, ; 195: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 283
	i32 1267360935, ; 196: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 287
	i32 1273260888, ; 197: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 239
	i32 1275534314, ; 198: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 304
	i32 1278448581, ; 199: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 231
	i32 1292207520, ; 200: SQLitePCLRaw.core.dll => 0x4d0585a0 => 219
	i32 1293217323, ; 201: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 250
	i32 1308624726, ; 202: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 317
	i32 1309188875, ; 203: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 204: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 292
	i32 1324164729, ; 205: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 206: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1336711579, ; 207: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 337
	i32 1364015309, ; 208: System.IO => 0x514d38cd => 57
	i32 1367676925, ; 209: Microsoft.Extensions.Configuration.CommandLine => 0x518517fd => 185
	i32 1373134921, ; 210: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 338
	i32 1376866003, ; 211: Xamarin.AndroidX.SavedState => 0x52114ed3 => 279
	i32 1379779777, ; 212: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 213: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 214: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 243
	i32 1408764838, ; 215: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 216: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422150612, ; 217: UBBnewsApp.dll => 0x54c44bd4 => 0
	i32 1422545099, ; 218: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 219: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 306
	i32 1434145427, ; 220: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 221: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 296
	i32 1439761251, ; 222: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 223: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 224: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 225: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 226: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461004990, ; 227: es\Microsoft.Maui.Controls.resources => 0x57152abe => 312
	i32 1461234159, ; 228: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 229: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 230: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 231: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 233
	i32 1470490898, ; 232: Microsoft.Extensions.Primitives => 0x57a5e912 => 209
	i32 1479771757, ; 233: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 234: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 235: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 236: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 280
	i32 1490351284, ; 237: Microsoft.Data.Sqlite.dll => 0x58d4f4b4 => 175
	i32 1521091094, ; 238: Microsoft.Extensions.FileSystemGlobbing => 0x5aaa0216 => 197
	i32 1526286932, ; 239: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 336
	i32 1536373174, ; 240: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 241: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 242: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 243: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1565862583, ; 244: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 245: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 246: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 247: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582372066, ; 248: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 249
	i32 1592978981, ; 249: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 250: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 297
	i32 1601112923, ; 251: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 252: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 253: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 254: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 269
	i32 1622358360, ; 255: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 256: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 291
	i32 1632842087, ; 257: Microsoft.Extensions.Configuration.Json => 0x61533167 => 188
	i32 1635184631, ; 258: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 253
	i32 1636350590, ; 259: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 246
	i32 1639515021, ; 260: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 261: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 262: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 263: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 264: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 285
	i32 1658251792, ; 265: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 294
	i32 1670060433, ; 266: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 241
	i32 1675553242, ; 267: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 268: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 269: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 270: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1688112883, ; 271: Microsoft.Data.Sqlite => 0x649e8ef3 => 175
	i32 1689493916, ; 272: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 176
	i32 1691477237, ; 273: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 274: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 275: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 301
	i32 1701541528, ; 276: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1711441057, ; 277: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 220
	i32 1720223769, ; 278: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 262
	i32 1726116996, ; 279: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 280: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 281: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 237
	i32 1743415430, ; 282: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 307
	i32 1744735666, ; 283: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 284: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 285: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 286: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 287: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 288: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 289: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 284
	i32 1767075704, ; 290: Microsoft.Extensions.Configuration.UserSecrets.dll => 0x69536f78 => 189
	i32 1770582343, ; 291: Microsoft.Extensions.Logging.dll => 0x6988f147 => 200
	i32 1776026572, ; 292: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 293: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 294: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 295: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 323
	i32 1788241197, ; 296: Xamarin.AndroidX.Fragment => 0x6a96652d => 255
	i32 1793755602, ; 297: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 315
	i32 1808609942, ; 298: Xamarin.AndroidX.Loader => 0x6bcd3296 => 269
	i32 1813058853, ; 299: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 300
	i32 1813201214, ; 300: Xamarin.Google.Android.Material => 0x6c13413e => 294
	i32 1818569960, ; 301: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 274
	i32 1818787751, ; 302: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 303: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 304: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 305: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 201
	i32 1847515442, ; 306: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 224
	i32 1853025655, ; 307: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 332
	i32 1858542181, ; 308: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 309: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1875935024, ; 310: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 314
	i32 1879696579, ; 311: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 312: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 235
	i32 1886040351, ; 313: Microsoft.EntityFrameworkCore.Sqlite.dll => 0x706ab11f => 179
	i32 1888955245, ; 314: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 315: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1893218855, ; 316: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 308
	i32 1898237753, ; 317: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 318: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 319: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 320: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1953182387, ; 321: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 319
	i32 1956758971, ; 322: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 323: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 281
	i32 1968388702, ; 324: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 182
	i32 1983156543, ; 325: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 301
	i32 1985761444, ; 326: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 226
	i32 2003115576, ; 327: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 311
	i32 2011961780, ; 328: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2014489277, ; 329: Microsoft.EntityFrameworkCore.Sqlite => 0x7812aabd => 179
	i32 2019465201, ; 330: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 266
	i32 2031763787, ; 331: Xamarin.Android.Glide => 0x791a414b => 223
	i32 2045470958, ; 332: System.Private.Xml => 0x79eb68ee => 88
	i32 2048278909, ; 333: Microsoft.Extensions.Configuration.Binder.dll => 0x7a16417d => 184
	i32 2055257422, ; 334: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 261
	i32 2060060697, ; 335: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 336: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 310
	i32 2070888862, ; 337: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2072397586, ; 338: Microsoft.Extensions.FileProviders.Physical => 0x7b864712 => 196
	i32 2079903147, ; 339: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 340: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2103459038, ; 341: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 221
	i32 2127167465, ; 342: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 343: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 344: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 345: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 346: Microsoft.Maui => 0x80bd55ad => 213
	i32 2169148018, ; 347: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 318
	i32 2181898931, ; 348: Microsoft.Extensions.Options.dll => 0x820d22b3 => 207
	i32 2192057212, ; 349: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 201
	i32 2193016926, ; 350: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2193681939, ; 351: Microsoft.Extensions.Configuration.EnvironmentVariables.dll => 0x82c0ee13 => 186
	i32 2197979891, ; 352: Microsoft.Extensions.DependencyModel.dll => 0x830282f3 => 192
	i32 2201107256, ; 353: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 305
	i32 2201231467, ; 354: System.Net.Http => 0x8334206b => 64
	i32 2207618523, ; 355: it\Microsoft.Maui.Controls.resources => 0x839595db => 320
	i32 2217644978, ; 356: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 288
	i32 2222056684, ; 357: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2244775296, ; 358: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 270
	i32 2252106437, ; 359: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2252897993, ; 360: Microsoft.EntityFrameworkCore => 0x86487ec9 => 176
	i32 2256313426, ; 361: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 362: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 363: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 183
	i32 2267999099, ; 364: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 225
	i32 2279755925, ; 365: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 277
	i32 2293034957, ; 366: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 367: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 368: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 369: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 324
	i32 2305521784, ; 370: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 371: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 229
	i32 2320631194, ; 372: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 373: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 374: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 375: System.Net.Primitives => 0x8c40e0db => 70
	i32 2366048013, ; 376: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 318
	i32 2368005991, ; 377: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2371007202, ; 378: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 182
	i32 2378619854, ; 379: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 380: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 381: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 319
	i32 2401565422, ; 382: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 383: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 252
	i32 2421380589, ; 384: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 385: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 239
	i32 2427813419, ; 386: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 316
	i32 2435356389, ; 387: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 388: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 389: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 390: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 391: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465273461, ; 392: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 218
	i32 2465532216, ; 393: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 242
	i32 2471841756, ; 394: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 395: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 396: Microsoft.Maui.Controls => 0x93dba8a1 => 211
	i32 2483903535, ; 397: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 398: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 399: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 400: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2503351294, ; 401: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 322
	i32 2505896520, ; 402: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 264
	i32 2509217888, ; 403: System.Diagnostics.EventLog => 0x958fa060 => 222
	i32 2522472828, ; 404: Xamarin.Android.Glide.dll => 0x9659e17c => 223
	i32 2538310050, ; 405: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 406: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 317
	i32 2562349572, ; 407: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 408: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2576534780, ; 409: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 321
	i32 2581783588, ; 410: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 265
	i32 2581819634, ; 411: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 287
	i32 2585220780, ; 412: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 413: System.Net.Ping => 0x9a20430d => 69
	i32 2588805703, ; 414: Microsoft.Extensions.Logging.EventSource.dll => 0x9a4e0a47 => 206
	i32 2589602615, ; 415: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2592341985, ; 416: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 195
	i32 2593496499, ; 417: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 326
	i32 2605712449, ; 418: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 305
	i32 2615233544, ; 419: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 256
	i32 2616218305, ; 420: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 204
	i32 2617129537, ; 421: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 422: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 423: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 246
	i32 2624644809, ; 424: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 251
	i32 2626831493, ; 425: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 321
	i32 2627185994, ; 426: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 427: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 428: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 260
	i32 2634653062, ; 429: Microsoft.EntityFrameworkCore.Relational.dll => 0x9d099d86 => 178
	i32 2663391936, ; 430: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 225
	i32 2663698177, ; 431: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 432: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 433: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 434: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 435: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 436: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 437: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 285
	i32 2715334215, ; 438: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 439: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 440: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 441: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 442: Xamarin.AndroidX.Activity => 0xa2e0939b => 227
	i32 2735172069, ; 443: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 444: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 233
	i32 2740698338, ; 445: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 307
	i32 2740948882, ; 446: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 447: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 448: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 327
	i32 2758225723, ; 449: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 212
	i32 2764765095, ; 450: Microsoft.Maui.dll => 0xa4caf7a7 => 213
	i32 2765824710, ; 451: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 452: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 299
	i32 2778768386, ; 453: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 290
	i32 2779977773, ; 454: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 278
	i32 2785988530, ; 455: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 333
	i32 2788224221, ; 456: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 256
	i32 2801831435, ; 457: Microsoft.Maui.Graphics => 0xa7008e0b => 215
	i32 2803228030, ; 458: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2810250172, ; 459: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 243
	i32 2819470561, ; 460: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 461: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 462: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 278
	i32 2824502124, ; 463: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2838993487, ; 464: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 267
	i32 2847789619, ; 465: Microsoft.EntityFrameworkCore.Relational => 0xa9bdd233 => 178
	i32 2849599387, ; 466: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 467: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 290
	i32 2855708567, ; 468: Xamarin.AndroidX.Transition => 0xaa36a797 => 286
	i32 2861098320, ; 469: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 470: Microsoft.Maui.Essentials => 0xaa8a4878 => 214
	i32 2870099610, ; 471: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 228
	i32 2875164099, ; 472: Jsr305Binding.dll => 0xab5f85c3 => 295
	i32 2875220617, ; 473: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 474: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 254
	i32 2887636118, ; 475: System.Net.dll => 0xac1dd496 => 81
	i32 2899753641, ; 476: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 477: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 478: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 479: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 480: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2911054922, ; 481: Microsoft.Extensions.FileProviders.Physical.dll => 0xad832c4a => 196
	i32 2916838712, ; 482: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 291
	i32 2919462931, ; 483: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 484: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 230
	i32 2936416060, ; 485: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 486: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 487: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 488: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 489: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2971004615, ; 490: Microsoft.Extensions.Options.ConfigurationExtensions.dll => 0xb115eec7 => 208
	i32 2972252294, ; 491: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 492: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 250
	i32 2987532451, ; 493: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 281
	i32 2996846495, ; 494: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 263
	i32 3016983068, ; 495: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 283
	i32 3020703001, ; 496: Microsoft.Extensions.Diagnostics => 0xb40c4519 => 193
	i32 3023353419, ; 497: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 498: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 258
	i32 3038032645, ; 499: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 340
	i32 3053864966, ; 500: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 313
	i32 3056245963, ; 501: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 280
	i32 3057625584, ; 502: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 271
	i32 3059408633, ; 503: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 504: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3069363400, ; 505: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 180
	i32 3075834255, ; 506: System.Threading.Tasks => 0xb755818f => 144
	i32 3090735792, ; 507: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 508: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 509: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3109243939, ; 510: Microsoft.Extensions.Logging.Configuration => 0xb9534c23 => 202
	i32 3111772706, ; 511: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 512: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 513: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 514: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 515: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 516: GoogleGson.dll => 0xbba64c02 => 173
	i32 3159123045, ; 517: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 518: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 519: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 272
	i32 3188578740, ; 520: Microsoft.Extensions.Configuration.EnvironmentVariables => 0xbe0dd9b4 => 186
	i32 3192346100, ; 521: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 522: System.Web => 0xbe592c0c => 153
	i32 3195844289, ; 523: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 180
	i32 3204380047, ; 524: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 525: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 526: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 249
	i32 3220365878, ; 527: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 528: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3236886769, ; 529: Microsoft.Extensions.Logging.EventLog => 0xc0eef8f1 => 205
	i32 3251039220, ; 530: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 531: Xamarin.AndroidX.CardView => 0xc235e84d => 237
	i32 3265493905, ; 532: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 533: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 534: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 535: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 536: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 537: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 538: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 539: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 540: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 313
	i32 3316684772, ; 541: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 542: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 247
	i32 3317144872, ; 543: System.Data => 0xc5b79d28 => 24
	i32 3340387945, ; 544: SkiaSharp => 0xc71a4669 => 217
	i32 3340431453, ; 545: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 235
	i32 3345895724, ; 546: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 276
	i32 3346324047, ; 547: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 273
	i32 3357674450, ; 548: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 330
	i32 3358260929, ; 549: System.Text.Json => 0xc82afec1 => 137
	i32 3360279109, ; 550: SQLitePCLRaw.core => 0xc849ca45 => 219
	i32 3362336904, ; 551: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 228
	i32 3362522851, ; 552: Xamarin.AndroidX.Core => 0xc86c06e3 => 244
	i32 3366347497, ; 553: Java.Interop => 0xc8a662e9 => 168
	i32 3374999561, ; 554: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 277
	i32 3381016424, ; 555: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 309
	i32 3395150330, ; 556: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 557: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3404864099, ; 558: Microsoft.Extensions.Hosting.dll => 0xcaf21a63 => 198
	i32 3405233483, ; 559: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 248
	i32 3421170118, ; 560: Microsoft.Extensions.Configuration.Binder => 0xcbeae9c6 => 184
	i32 3428513518, ; 561: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 190
	i32 3429136800, ; 562: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 563: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 564: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 251
	i32 3445260447, ; 565: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 566: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 210
	i32 3458724246, ; 567: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 328
	i32 3471231830, ; 568: Microsoft.Extensions.Hosting => 0xcee6cb56 => 198
	i32 3471940407, ; 569: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 570: Mono.Android => 0xcf3163e6 => 171
	i32 3484440000, ; 571: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 329
	i32 3485117614, ; 572: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 573: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 574: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 240
	i32 3509114376, ; 575: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 576: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 577: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 578: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3560100363, ; 579: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 580: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3580758918, ; 581: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 337
	i32 3592228221, ; 582: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 339
	i32 3597029428, ; 583: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 226
	i32 3598340787, ; 584: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 585: System.Linq.dll => 0xd715a361 => 61
	i32 3620450613, ; 586: Microsoft.Extensions.Configuration.CommandLine.dll => 0xd7cbb135 => 185
	i32 3624195450, ; 587: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 588: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 275
	i32 3633644679, ; 589: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 230
	i32 3638274909, ; 590: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 591: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 261
	i32 3643446276, ; 592: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 334
	i32 3643854240, ; 593: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 272
	i32 3645089577, ; 594: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 595: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 183
	i32 3660523487, ; 596: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 597: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 598: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 236
	i32 3684561358, ; 599: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 240
	i32 3700866549, ; 600: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 601: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 245
	i32 3716563718, ; 602: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 603: Xamarin.AndroidX.Annotation => 0xdda814c6 => 229
	i32 3722202641, ; 604: Microsoft.Extensions.Configuration.Json.dll => 0xdddc4e11 => 188
	i32 3724971120, ; 605: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 271
	i32 3732100267, ; 606: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 607: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 608: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 609: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3751619990, ; 610: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 309
	i32 3754567612, ; 611: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 221
	i32 3758424670, ; 612: Microsoft.Extensions.Configuration.FileExtensions => 0xe005025e => 187
	i32 3786282454, ; 613: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 238
	i32 3792276235, ; 614: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 615: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 210
	i32 3802395368, ; 616: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3810220126, ; 617: HtmlAgilityPack.dll => 0xe31b585e => 174
	i32 3819260425, ; 618: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 619: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 620: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 621: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 191
	i32 3844307129, ; 622: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 623: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 624: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 625: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 626: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 627: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 628: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 286
	i32 3888767677, ; 629: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 276
	i32 3896106733, ; 630: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 631: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 244
	i32 3901907137, ; 632: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920221145, ; 633: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 325
	i32 3920810846, ; 634: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 635: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 289
	i32 3928044579, ; 636: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 637: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 638: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 274
	i32 3945713374, ; 639: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 640: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 641: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 232
	i32 3959773229, ; 642: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 263
	i32 3963903781, ; 643: Microsoft.Extensions.Configuration.UserSecrets => 0xec445f25 => 189
	i32 4003436829, ; 644: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 645: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 231
	i32 4025784931, ; 646: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 647: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 212
	i32 4054681211, ; 648: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 649: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 650: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4075152723, ; 651: Microsoft.Extensions.Logging.Console => 0xf2e5e553 => 203
	i32 4078967171, ; 652: Microsoft.Extensions.Hosting.Abstractions.dll => 0xf3201983 => 199
	i32 4091086043, ; 653: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 311
	i32 4094352644, ; 654: Microsoft.Maui.Essentials.dll => 0xf40add04 => 214
	i32 4099507663, ; 655: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 656: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 657: Xamarin.AndroidX.Emoji2 => 0xf479582c => 252
	i32 4101842092, ; 658: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 181
	i32 4103439459, ; 659: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 335
	i32 4126470640, ; 660: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 190
	i32 4127667938, ; 661: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 662: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 663: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 664: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 335
	i32 4151237749, ; 665: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 666: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 667: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 668: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 669: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 670: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 268
	i32 4185676441, ; 671: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 672: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 673: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4249188766, ; 674: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 324
	i32 4256097574, ; 675: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 245
	i32 4258378803, ; 676: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 267
	i32 4260525087, ; 677: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 678: Microsoft.Maui.Controls.dll => 0xfea12dee => 211
	i32 4274976490, ; 679: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 680: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 268
	i32 4294763496 ; 681: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 254
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [682 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 192, ; 3
	i32 264, ; 4
	i32 298, ; 5
	i32 48, ; 6
	i32 306, ; 7
	i32 216, ; 8
	i32 80, ; 9
	i32 315, ; 10
	i32 145, ; 11
	i32 174, ; 12
	i32 30, ; 13
	i32 339, ; 14
	i32 124, ; 15
	i32 215, ; 16
	i32 102, ; 17
	i32 323, ; 18
	i32 194, ; 19
	i32 282, ; 20
	i32 107, ; 21
	i32 282, ; 22
	i32 139, ; 23
	i32 302, ; 24
	i32 338, ; 25
	i32 331, ; 26
	i32 77, ; 27
	i32 124, ; 28
	i32 13, ; 29
	i32 238, ; 30
	i32 132, ; 31
	i32 284, ; 32
	i32 151, ; 33
	i32 18, ; 34
	i32 236, ; 35
	i32 26, ; 36
	i32 193, ; 37
	i32 258, ; 38
	i32 1, ; 39
	i32 59, ; 40
	i32 42, ; 41
	i32 91, ; 42
	i32 241, ; 43
	i32 147, ; 44
	i32 260, ; 45
	i32 257, ; 46
	i32 54, ; 47
	i32 69, ; 48
	i32 336, ; 49
	i32 227, ; 50
	i32 83, ; 51
	i32 314, ; 52
	i32 259, ; 53
	i32 220, ; 54
	i32 131, ; 55
	i32 55, ; 56
	i32 149, ; 57
	i32 74, ; 58
	i32 145, ; 59
	i32 62, ; 60
	i32 146, ; 61
	i32 340, ; 62
	i32 165, ; 63
	i32 334, ; 64
	i32 242, ; 65
	i32 12, ; 66
	i32 255, ; 67
	i32 125, ; 68
	i32 152, ; 69
	i32 113, ; 70
	i32 166, ; 71
	i32 164, ; 72
	i32 257, ; 73
	i32 270, ; 74
	i32 312, ; 75
	i32 84, ; 76
	i32 209, ; 77
	i32 0, ; 78
	i32 217, ; 79
	i32 150, ; 80
	i32 302, ; 81
	i32 60, ; 82
	i32 333, ; 83
	i32 200, ; 84
	i32 51, ; 85
	i32 103, ; 86
	i32 202, ; 87
	i32 114, ; 88
	i32 40, ; 89
	i32 295, ; 90
	i32 293, ; 91
	i32 120, ; 92
	i32 52, ; 93
	i32 44, ; 94
	i32 119, ; 95
	i32 247, ; 96
	i32 325, ; 97
	i32 253, ; 98
	i32 81, ; 99
	i32 136, ; 100
	i32 289, ; 101
	i32 234, ; 102
	i32 8, ; 103
	i32 73, ; 104
	i32 155, ; 105
	i32 304, ; 106
	i32 203, ; 107
	i32 154, ; 108
	i32 92, ; 109
	i32 299, ; 110
	i32 45, ; 111
	i32 303, ; 112
	i32 109, ; 113
	i32 208, ; 114
	i32 129, ; 115
	i32 218, ; 116
	i32 25, ; 117
	i32 224, ; 118
	i32 72, ; 119
	i32 55, ; 120
	i32 46, ; 121
	i32 331, ; 122
	i32 207, ; 123
	i32 248, ; 124
	i32 22, ; 125
	i32 262, ; 126
	i32 86, ; 127
	i32 43, ; 128
	i32 160, ; 129
	i32 71, ; 130
	i32 275, ; 131
	i32 316, ; 132
	i32 3, ; 133
	i32 42, ; 134
	i32 63, ; 135
	i32 330, ; 136
	i32 16, ; 137
	i32 53, ; 138
	i32 327, ; 139
	i32 298, ; 140
	i32 105, ; 141
	i32 216, ; 142
	i32 303, ; 143
	i32 320, ; 144
	i32 296, ; 145
	i32 259, ; 146
	i32 34, ; 147
	i32 158, ; 148
	i32 85, ; 149
	i32 32, ; 150
	i32 329, ; 151
	i32 12, ; 152
	i32 51, ; 153
	i32 197, ; 154
	i32 56, ; 155
	i32 279, ; 156
	i32 36, ; 157
	i32 191, ; 158
	i32 297, ; 159
	i32 232, ; 160
	i32 35, ; 161
	i32 310, ; 162
	i32 58, ; 163
	i32 206, ; 164
	i32 194, ; 165
	i32 266, ; 166
	i32 173, ; 167
	i32 17, ; 168
	i32 205, ; 169
	i32 300, ; 170
	i32 222, ; 171
	i32 164, ; 172
	i32 187, ; 173
	i32 332, ; 174
	i32 199, ; 175
	i32 326, ; 176
	i32 322, ; 177
	i32 265, ; 178
	i32 204, ; 179
	i32 292, ; 180
	i32 177, ; 181
	i32 328, ; 182
	i32 153, ; 183
	i32 195, ; 184
	i32 288, ; 185
	i32 273, ; 186
	i32 177, ; 187
	i32 234, ; 188
	i32 181, ; 189
	i32 29, ; 190
	i32 52, ; 191
	i32 293, ; 192
	i32 5, ; 193
	i32 308, ; 194
	i32 283, ; 195
	i32 287, ; 196
	i32 239, ; 197
	i32 304, ; 198
	i32 231, ; 199
	i32 219, ; 200
	i32 250, ; 201
	i32 317, ; 202
	i32 85, ; 203
	i32 292, ; 204
	i32 61, ; 205
	i32 112, ; 206
	i32 337, ; 207
	i32 57, ; 208
	i32 185, ; 209
	i32 338, ; 210
	i32 279, ; 211
	i32 99, ; 212
	i32 19, ; 213
	i32 243, ; 214
	i32 111, ; 215
	i32 101, ; 216
	i32 0, ; 217
	i32 102, ; 218
	i32 306, ; 219
	i32 104, ; 220
	i32 296, ; 221
	i32 71, ; 222
	i32 38, ; 223
	i32 32, ; 224
	i32 103, ; 225
	i32 73, ; 226
	i32 312, ; 227
	i32 9, ; 228
	i32 123, ; 229
	i32 46, ; 230
	i32 233, ; 231
	i32 209, ; 232
	i32 9, ; 233
	i32 43, ; 234
	i32 4, ; 235
	i32 280, ; 236
	i32 175, ; 237
	i32 197, ; 238
	i32 336, ; 239
	i32 31, ; 240
	i32 138, ; 241
	i32 92, ; 242
	i32 93, ; 243
	i32 49, ; 244
	i32 141, ; 245
	i32 112, ; 246
	i32 140, ; 247
	i32 249, ; 248
	i32 115, ; 249
	i32 297, ; 250
	i32 157, ; 251
	i32 76, ; 252
	i32 79, ; 253
	i32 269, ; 254
	i32 37, ; 255
	i32 291, ; 256
	i32 188, ; 257
	i32 253, ; 258
	i32 246, ; 259
	i32 64, ; 260
	i32 138, ; 261
	i32 15, ; 262
	i32 116, ; 263
	i32 285, ; 264
	i32 294, ; 265
	i32 241, ; 266
	i32 48, ; 267
	i32 70, ; 268
	i32 80, ; 269
	i32 126, ; 270
	i32 175, ; 271
	i32 176, ; 272
	i32 94, ; 273
	i32 121, ; 274
	i32 301, ; 275
	i32 26, ; 276
	i32 220, ; 277
	i32 262, ; 278
	i32 97, ; 279
	i32 28, ; 280
	i32 237, ; 281
	i32 307, ; 282
	i32 149, ; 283
	i32 169, ; 284
	i32 4, ; 285
	i32 98, ; 286
	i32 33, ; 287
	i32 93, ; 288
	i32 284, ; 289
	i32 189, ; 290
	i32 200, ; 291
	i32 21, ; 292
	i32 41, ; 293
	i32 170, ; 294
	i32 323, ; 295
	i32 255, ; 296
	i32 315, ; 297
	i32 269, ; 298
	i32 300, ; 299
	i32 294, ; 300
	i32 274, ; 301
	i32 2, ; 302
	i32 134, ; 303
	i32 111, ; 304
	i32 201, ; 305
	i32 224, ; 306
	i32 332, ; 307
	i32 58, ; 308
	i32 95, ; 309
	i32 314, ; 310
	i32 39, ; 311
	i32 235, ; 312
	i32 179, ; 313
	i32 25, ; 314
	i32 94, ; 315
	i32 308, ; 316
	i32 89, ; 317
	i32 99, ; 318
	i32 10, ; 319
	i32 87, ; 320
	i32 319, ; 321
	i32 100, ; 322
	i32 281, ; 323
	i32 182, ; 324
	i32 301, ; 325
	i32 226, ; 326
	i32 311, ; 327
	i32 7, ; 328
	i32 179, ; 329
	i32 266, ; 330
	i32 223, ; 331
	i32 88, ; 332
	i32 184, ; 333
	i32 261, ; 334
	i32 154, ; 335
	i32 310, ; 336
	i32 33, ; 337
	i32 196, ; 338
	i32 116, ; 339
	i32 82, ; 340
	i32 221, ; 341
	i32 20, ; 342
	i32 11, ; 343
	i32 162, ; 344
	i32 3, ; 345
	i32 213, ; 346
	i32 318, ; 347
	i32 207, ; 348
	i32 201, ; 349
	i32 84, ; 350
	i32 186, ; 351
	i32 192, ; 352
	i32 305, ; 353
	i32 64, ; 354
	i32 320, ; 355
	i32 288, ; 356
	i32 143, ; 357
	i32 270, ; 358
	i32 157, ; 359
	i32 176, ; 360
	i32 41, ; 361
	i32 117, ; 362
	i32 183, ; 363
	i32 225, ; 364
	i32 277, ; 365
	i32 131, ; 366
	i32 75, ; 367
	i32 66, ; 368
	i32 324, ; 369
	i32 172, ; 370
	i32 229, ; 371
	i32 143, ; 372
	i32 106, ; 373
	i32 151, ; 374
	i32 70, ; 375
	i32 318, ; 376
	i32 156, ; 377
	i32 182, ; 378
	i32 121, ; 379
	i32 127, ; 380
	i32 319, ; 381
	i32 152, ; 382
	i32 252, ; 383
	i32 141, ; 384
	i32 239, ; 385
	i32 316, ; 386
	i32 20, ; 387
	i32 14, ; 388
	i32 135, ; 389
	i32 75, ; 390
	i32 59, ; 391
	i32 218, ; 392
	i32 242, ; 393
	i32 167, ; 394
	i32 168, ; 395
	i32 211, ; 396
	i32 15, ; 397
	i32 74, ; 398
	i32 6, ; 399
	i32 23, ; 400
	i32 322, ; 401
	i32 264, ; 402
	i32 222, ; 403
	i32 223, ; 404
	i32 91, ; 405
	i32 317, ; 406
	i32 1, ; 407
	i32 136, ; 408
	i32 321, ; 409
	i32 265, ; 410
	i32 287, ; 411
	i32 134, ; 412
	i32 69, ; 413
	i32 206, ; 414
	i32 146, ; 415
	i32 195, ; 416
	i32 326, ; 417
	i32 305, ; 418
	i32 256, ; 419
	i32 204, ; 420
	i32 88, ; 421
	i32 96, ; 422
	i32 246, ; 423
	i32 251, ; 424
	i32 321, ; 425
	i32 31, ; 426
	i32 45, ; 427
	i32 260, ; 428
	i32 178, ; 429
	i32 225, ; 430
	i32 109, ; 431
	i32 158, ; 432
	i32 35, ; 433
	i32 22, ; 434
	i32 114, ; 435
	i32 57, ; 436
	i32 285, ; 437
	i32 144, ; 438
	i32 118, ; 439
	i32 120, ; 440
	i32 110, ; 441
	i32 227, ; 442
	i32 139, ; 443
	i32 233, ; 444
	i32 307, ; 445
	i32 54, ; 446
	i32 105, ; 447
	i32 327, ; 448
	i32 212, ; 449
	i32 213, ; 450
	i32 133, ; 451
	i32 299, ; 452
	i32 290, ; 453
	i32 278, ; 454
	i32 333, ; 455
	i32 256, ; 456
	i32 215, ; 457
	i32 159, ; 458
	i32 243, ; 459
	i32 163, ; 460
	i32 132, ; 461
	i32 278, ; 462
	i32 161, ; 463
	i32 267, ; 464
	i32 178, ; 465
	i32 140, ; 466
	i32 290, ; 467
	i32 286, ; 468
	i32 169, ; 469
	i32 214, ; 470
	i32 228, ; 471
	i32 295, ; 472
	i32 40, ; 473
	i32 254, ; 474
	i32 81, ; 475
	i32 56, ; 476
	i32 37, ; 477
	i32 97, ; 478
	i32 166, ; 479
	i32 172, ; 480
	i32 196, ; 481
	i32 291, ; 482
	i32 82, ; 483
	i32 230, ; 484
	i32 98, ; 485
	i32 30, ; 486
	i32 159, ; 487
	i32 18, ; 488
	i32 127, ; 489
	i32 208, ; 490
	i32 119, ; 491
	i32 250, ; 492
	i32 281, ; 493
	i32 263, ; 494
	i32 283, ; 495
	i32 193, ; 496
	i32 165, ; 497
	i32 258, ; 498
	i32 340, ; 499
	i32 313, ; 500
	i32 280, ; 501
	i32 271, ; 502
	i32 170, ; 503
	i32 16, ; 504
	i32 180, ; 505
	i32 144, ; 506
	i32 125, ; 507
	i32 118, ; 508
	i32 38, ; 509
	i32 202, ; 510
	i32 115, ; 511
	i32 47, ; 512
	i32 142, ; 513
	i32 117, ; 514
	i32 34, ; 515
	i32 173, ; 516
	i32 95, ; 517
	i32 53, ; 518
	i32 272, ; 519
	i32 186, ; 520
	i32 129, ; 521
	i32 153, ; 522
	i32 180, ; 523
	i32 24, ; 524
	i32 161, ; 525
	i32 249, ; 526
	i32 148, ; 527
	i32 104, ; 528
	i32 205, ; 529
	i32 89, ; 530
	i32 237, ; 531
	i32 60, ; 532
	i32 142, ; 533
	i32 100, ; 534
	i32 5, ; 535
	i32 13, ; 536
	i32 122, ; 537
	i32 135, ; 538
	i32 28, ; 539
	i32 313, ; 540
	i32 72, ; 541
	i32 247, ; 542
	i32 24, ; 543
	i32 217, ; 544
	i32 235, ; 545
	i32 276, ; 546
	i32 273, ; 547
	i32 330, ; 548
	i32 137, ; 549
	i32 219, ; 550
	i32 228, ; 551
	i32 244, ; 552
	i32 168, ; 553
	i32 277, ; 554
	i32 309, ; 555
	i32 101, ; 556
	i32 123, ; 557
	i32 198, ; 558
	i32 248, ; 559
	i32 184, ; 560
	i32 190, ; 561
	i32 163, ; 562
	i32 167, ; 563
	i32 251, ; 564
	i32 39, ; 565
	i32 210, ; 566
	i32 328, ; 567
	i32 198, ; 568
	i32 17, ; 569
	i32 171, ; 570
	i32 329, ; 571
	i32 137, ; 572
	i32 150, ; 573
	i32 240, ; 574
	i32 155, ; 575
	i32 130, ; 576
	i32 19, ; 577
	i32 65, ; 578
	i32 147, ; 579
	i32 47, ; 580
	i32 337, ; 581
	i32 339, ; 582
	i32 226, ; 583
	i32 79, ; 584
	i32 61, ; 585
	i32 185, ; 586
	i32 106, ; 587
	i32 275, ; 588
	i32 230, ; 589
	i32 49, ; 590
	i32 261, ; 591
	i32 334, ; 592
	i32 272, ; 593
	i32 14, ; 594
	i32 183, ; 595
	i32 68, ; 596
	i32 171, ; 597
	i32 236, ; 598
	i32 240, ; 599
	i32 78, ; 600
	i32 245, ; 601
	i32 108, ; 602
	i32 229, ; 603
	i32 188, ; 604
	i32 271, ; 605
	i32 67, ; 606
	i32 63, ; 607
	i32 27, ; 608
	i32 160, ; 609
	i32 309, ; 610
	i32 221, ; 611
	i32 187, ; 612
	i32 238, ; 613
	i32 10, ; 614
	i32 210, ; 615
	i32 11, ; 616
	i32 174, ; 617
	i32 78, ; 618
	i32 126, ; 619
	i32 83, ; 620
	i32 191, ; 621
	i32 66, ; 622
	i32 107, ; 623
	i32 65, ; 624
	i32 128, ; 625
	i32 122, ; 626
	i32 77, ; 627
	i32 286, ; 628
	i32 276, ; 629
	i32 8, ; 630
	i32 244, ; 631
	i32 2, ; 632
	i32 325, ; 633
	i32 44, ; 634
	i32 289, ; 635
	i32 156, ; 636
	i32 128, ; 637
	i32 274, ; 638
	i32 23, ; 639
	i32 133, ; 640
	i32 232, ; 641
	i32 263, ; 642
	i32 189, ; 643
	i32 29, ; 644
	i32 231, ; 645
	i32 62, ; 646
	i32 212, ; 647
	i32 90, ; 648
	i32 87, ; 649
	i32 148, ; 650
	i32 203, ; 651
	i32 199, ; 652
	i32 311, ; 653
	i32 214, ; 654
	i32 36, ; 655
	i32 86, ; 656
	i32 252, ; 657
	i32 181, ; 658
	i32 335, ; 659
	i32 190, ; 660
	i32 50, ; 661
	i32 6, ; 662
	i32 90, ; 663
	i32 335, ; 664
	i32 21, ; 665
	i32 162, ; 666
	i32 96, ; 667
	i32 50, ; 668
	i32 113, ; 669
	i32 268, ; 670
	i32 130, ; 671
	i32 76, ; 672
	i32 27, ; 673
	i32 324, ; 674
	i32 245, ; 675
	i32 267, ; 676
	i32 7, ; 677
	i32 211, ; 678
	i32 110, ; 679
	i32 268, ; 680
	i32 254 ; 681
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ f1b7113872c8db3dfee70d11925e81bb752dc8d0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
