; ModuleID = 'obj\Debug\130\android\marshal_methods.x86.ll'
source_filename = "obj\Debug\130\android\marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [240 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 63
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 97
	i32 39852199, ; 2: Plugin.Permissions => 0x26018a7 => 10
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 90
	i32 101534019, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 79
	i32 120558881, ; 5: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 79
	i32 134690465, ; 6: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 105
	i32 165246403, ; 7: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 40
	i32 166922606, ; 8: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 28
	i32 182336117, ; 9: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 81
	i32 209399409, ; 10: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 38
	i32 212497893, ; 11: Xamarin.Forms.Maps.Android => 0xcaa75e5 => 91
	i32 230216969, ; 12: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 57
	i32 232815796, ; 13: System.Web.Services => 0xde07cb4 => 118
	i32 261689757, ; 14: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 43
	i32 278686392, ; 15: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 61
	i32 280482487, ; 16: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 55
	i32 318968648, ; 17: Xamarin.AndroidX.Activity.dll => 0x13031348 => 30
	i32 319314094, ; 18: Xamarin.Forms.Maps => 0x130858ae => 92
	i32 321597661, ; 19: System.Numerics => 0x132b30dd => 21
	i32 342366114, ; 20: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 59
	i32 347068432, ; 21: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 15
	i32 385762202, ; 22: System.Memory.dll => 0x16fe439a => 20
	i32 441335492, ; 23: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 42
	i32 442521989, ; 24: Xamarin.Essentials => 0x1a605985 => 89
	i32 450948140, ; 25: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 54
	i32 465846621, ; 26: mscorlib => 0x1bc4415d => 6
	i32 469710990, ; 27: System.dll => 0x1bff388e => 19
	i32 476646585, ; 28: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 55
	i32 486930444, ; 29: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 67
	i32 514659665, ; 30: Xamarin.Android.Support.Compat => 0x1ead1551 => 28
	i32 526420162, ; 31: System.Transactions.dll => 0x1f6088c2 => 113
	i32 527452488, ; 32: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 105
	i32 555136466, ; 33: PM2E147.Android.dll => 0x2116b5d2 => 0
	i32 605376203, ; 34: System.IO.Compression.FileSystem => 0x24154ecb => 116
	i32 627609679, ; 35: Xamarin.AndroidX.CustomView => 0x2568904f => 48
	i32 639843206, ; 36: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 53
	i32 663517072, ; 37: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 86
	i32 666292255, ; 38: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 35
	i32 690569205, ; 39: System.Xml.Linq.dll => 0x29293ff5 => 26
	i32 691348768, ; 40: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 107
	i32 692692150, ; 41: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 27
	i32 700284507, ; 42: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 102
	i32 720511267, ; 43: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 106
	i32 748832960, ; 44: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 13
	i32 775507847, ; 45: System.IO.Compression => 0x2e394f87 => 115
	i32 809851609, ; 46: System.Drawing.Common.dll => 0x30455ad9 => 110
	i32 843511501, ; 47: Xamarin.AndroidX.Print => 0x3246f6cd => 74
	i32 928116545, ; 48: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 97
	i32 956575887, ; 49: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 106
	i32 957807352, ; 50: Plugin.CurrentActivity => 0x3916faf8 => 7
	i32 967690846, ; 51: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 59
	i32 974778368, ; 52: FormsViewGroup.dll => 0x3a19f000 => 3
	i32 1012816738, ; 53: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 78
	i32 1035644815, ; 54: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 34
	i32 1042160112, ; 55: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 94
	i32 1052210849, ; 56: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 64
	i32 1084122840, ; 57: Xamarin.Kotlin.StdLib => 0x409e66d8 => 104
	i32 1098259244, ; 58: System => 0x41761b2c => 19
	i32 1104002344, ; 59: Plugin.Media => 0x41cdbd28 => 9
	i32 1137654822, ; 60: Plugin.Permissions.dll => 0x43cf3c26 => 10
	i32 1175144683, ; 61: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 84
	i32 1178241025, ; 62: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 71
	i32 1204270330, ; 63: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 35
	i32 1264511973, ; 64: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 80
	i32 1267360935, ; 65: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 85
	i32 1275534314, ; 66: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 107
	i32 1282958517, ; 67: Plugin.Geolocator => 0x4c7864b5 => 8
	i32 1292207520, ; 68: SQLitePCLRaw.core.dll => 0x4d0585a0 => 14
	i32 1293217323, ; 69: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 50
	i32 1365406463, ; 70: System.ServiceModel.Internals.dll => 0x516272ff => 109
	i32 1376866003, ; 71: Xamarin.AndroidX.SavedState => 0x52114ed3 => 78
	i32 1395857551, ; 72: Xamarin.AndroidX.Media.dll => 0x5333188f => 68
	i32 1406073936, ; 73: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 44
	i32 1411638395, ; 74: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 23
	i32 1460219004, ; 75: Xamarin.Forms.Xaml => 0x57092c7c => 95
	i32 1462112819, ; 76: System.IO.Compression.dll => 0x57261233 => 115
	i32 1469204771, ; 77: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 33
	i32 1530663695, ; 78: Xamarin.Forms.Maps.dll => 0x5b3c130f => 92
	i32 1574652163, ; 79: Xamarin.Android.Support.Core.Utils.dll => 0x5ddb4903 => 29
	i32 1582372066, ; 80: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 49
	i32 1592978981, ; 81: System.Runtime.Serialization.dll => 0x5ef2ee25 => 2
	i32 1608672043, ; 82: PM2E147.dll => 0x5fe2632b => 11
	i32 1610685706, ; 83: PM2E147.Android => 0x60011d0a => 0
	i32 1622152042, ; 84: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 66
	i32 1624863272, ; 85: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 88
	i32 1635184631, ; 86: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 53
	i32 1636350590, ; 87: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 47
	i32 1639515021, ; 88: System.Net.Http.dll => 0x61b9038d => 1
	i32 1657153582, ; 89: System.Runtime => 0x62c6282e => 24
	i32 1658241508, ; 90: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 82
	i32 1658251792, ; 91: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 96
	i32 1670060433, ; 92: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 43
	i32 1698840827, ; 93: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 103
	i32 1711441057, ; 94: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 15
	i32 1729485958, ; 95: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 39
	i32 1766324549, ; 96: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 81
	i32 1776026572, ; 97: System.Core.dll => 0x69dc03cc => 18
	i32 1788241197, ; 98: Xamarin.AndroidX.Fragment => 0x6a96652d => 54
	i32 1808609942, ; 99: Xamarin.AndroidX.Loader => 0x6bcd3296 => 66
	i32 1813058853, ; 100: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 104
	i32 1813201214, ; 101: Xamarin.Google.Android.Material => 0x6c13413e => 96
	i32 1818569960, ; 102: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 72
	i32 1867746548, ; 103: Xamarin.Essentials.dll => 0x6f538cf4 => 89
	i32 1878053835, ; 104: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 95
	i32 1881862856, ; 105: Xamarin.Forms.Maps.Android.dll => 0x702af2c8 => 91
	i32 1885316902, ; 106: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 36
	i32 1908813208, ; 107: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 99
	i32 1919157823, ; 108: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 69
	i32 1983156543, ; 109: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 103
	i32 2011961780, ; 110: System.Buffers.dll => 0x77ec19b4 => 17
	i32 2019465201, ; 111: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 64
	i32 2048185678, ; 112: Plugin.Media.dll => 0x7a14d54e => 9
	i32 2055257422, ; 113: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 60
	i32 2079903147, ; 114: System.Runtime.dll => 0x7bf8cdab => 24
	i32 2090596640, ; 115: System.Numerics.Vectors => 0x7c9bf920 => 22
	i32 2097448633, ; 116: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 56
	i32 2103459038, ; 117: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 16
	i32 2126786730, ; 118: Xamarin.Forms.Platform.Android => 0x7ec430aa => 93
	i32 2129483829, ; 119: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 98
	i32 2166116741, ; 120: Xamarin.Android.Support.Core.Utils => 0x811c5185 => 29
	i32 2201107256, ; 121: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 108
	i32 2201231467, ; 122: System.Net.Http => 0x8334206b => 1
	i32 2217644978, ; 123: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 84
	i32 2244775296, ; 124: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 67
	i32 2256548716, ; 125: Xamarin.AndroidX.MultiDex => 0x8680336c => 69
	i32 2261435625, ; 126: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 58
	i32 2279755925, ; 127: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 76
	i32 2315684594, ; 128: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 31
	i32 2403452196, ; 129: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 52
	i32 2409053734, ; 130: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 73
	i32 2465273461, ; 131: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 13
	i32 2465532216, ; 132: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 42
	i32 2471841756, ; 133: netstandard.dll => 0x93554fdc => 111
	i32 2475788418, ; 134: Java.Interop.dll => 0x93918882 => 4
	i32 2501346920, ; 135: System.Data.DataSetExtensions => 0x95178668 => 114
	i32 2505896520, ; 136: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 63
	i32 2581819634, ; 137: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 85
	i32 2605712449, ; 138: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 108
	i32 2620871830, ; 139: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 47
	i32 2624644809, ; 140: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 51
	i32 2633051222, ; 141: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 61
	i32 2701096212, ; 142: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 82
	i32 2732626843, ; 143: Xamarin.AndroidX.Activity => 0xa2e0939b => 30
	i32 2737747696, ; 144: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 33
	i32 2766581644, ; 145: Xamarin.Forms.Core => 0xa4e6af8c => 90
	i32 2770495804, ; 146: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 102
	i32 2778768386, ; 147: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 87
	i32 2779977773, ; 148: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 77
	i32 2806986428, ; 149: Plugin.CurrentActivity.dll => 0xa74f36bc => 7
	i32 2810250172, ; 150: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 44
	i32 2819470561, ; 151: System.Xml.dll => 0xa80db4e1 => 25
	i32 2821294376, ; 152: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 77
	i32 2847418871, ; 153: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 98
	i32 2853208004, ; 154: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 87
	i32 2855708567, ; 155: Xamarin.AndroidX.Transition => 0xaa36a797 => 83
	i32 2903344695, ; 156: System.ComponentModel.Composition => 0xad0d8637 => 117
	i32 2905242038, ; 157: mscorlib.dll => 0xad2a79b6 => 6
	i32 2916838712, ; 158: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 88
	i32 2919462931, ; 159: System.Numerics.Vectors.dll => 0xae037813 => 22
	i32 2921128767, ; 160: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 32
	i32 2978675010, ; 161: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 50
	i32 2986386329, ; 162: PM2E147 => 0xb200a399 => 11
	i32 2996846495, ; 163: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 62
	i32 3016983068, ; 164: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 80
	i32 3017076677, ; 165: Xamarin.GooglePlayServices.Maps => 0xb3d4efc5 => 100
	i32 3024354802, ; 166: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 57
	i32 3044182254, ; 167: FormsViewGroup => 0xb57288ee => 3
	i32 3057625584, ; 168: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 70
	i32 3058099980, ; 169: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 101
	i32 3111772706, ; 170: System.Runtime.Serialization => 0xb979e222 => 2
	i32 3126016514, ; 171: Plugin.Geolocator.dll => 0xba533a02 => 8
	i32 3204380047, ; 172: System.Data.dll => 0xbefef58f => 112
	i32 3211777861, ; 173: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 49
	i32 3230466174, ; 174: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 99
	i32 3247949154, ; 175: Mono.Security => 0xc197c562 => 119
	i32 3258312781, ; 176: Xamarin.AndroidX.CardView => 0xc235e84d => 39
	i32 3267021929, ; 177: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 37
	i32 3286872994, ; 178: SQLite-net.dll => 0xc3e9b3a2 => 12
	i32 3317135071, ; 179: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 48
	i32 3317144872, ; 180: System.Data => 0xc5b79d28 => 112
	i32 3340431453, ; 181: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 36
	i32 3345895724, ; 182: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 75
	i32 3346324047, ; 183: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 71
	i32 3353484488, ; 184: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 56
	i32 3360279109, ; 185: SQLitePCLRaw.core => 0xc849ca45 => 14
	i32 3362522851, ; 186: Xamarin.AndroidX.Core => 0xc86c06e3 => 46
	i32 3366347497, ; 187: Java.Interop => 0xc8a662e9 => 4
	i32 3374999561, ; 188: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 76
	i32 3395150330, ; 189: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 23
	i32 3404865022, ; 190: System.ServiceModel.Internals => 0xcaf21dfe => 109
	i32 3429136800, ; 191: System.Xml => 0xcc6479a0 => 25
	i32 3430777524, ; 192: netstandard => 0xcc7d82b4 => 111
	i32 3439690031, ; 193: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 27
	i32 3441283291, ; 194: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 51
	i32 3476120550, ; 195: Mono.Android => 0xcf3163e6 => 5
	i32 3486566296, ; 196: System.Transactions => 0xcfd0c798 => 113
	i32 3493954962, ; 197: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 41
	i32 3501239056, ; 198: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 37
	i32 3509114376, ; 199: System.Xml.Linq => 0xd128d608 => 26
	i32 3536029504, ; 200: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 93
	i32 3567349600, ; 201: System.ComponentModel.Composition.dll => 0xd4a16f60 => 117
	i32 3618140916, ; 202: Xamarin.AndroidX.Preference => 0xd7a872f4 => 73
	i32 3627220390, ; 203: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 74
	i32 3632359727, ; 204: Xamarin.Forms.Platform => 0xd881692f => 94
	i32 3633644679, ; 205: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 32
	i32 3641597786, ; 206: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 60
	i32 3672681054, ; 207: Mono.Android.dll => 0xdae8aa5e => 5
	i32 3676310014, ; 208: System.Web.Services.dll => 0xdb2009fe => 118
	i32 3682565725, ; 209: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 38
	i32 3684561358, ; 210: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 41
	i32 3689375977, ; 211: System.Drawing.Common => 0xdbe768e9 => 110
	i32 3706696989, ; 212: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 45
	i32 3718780102, ; 213: Xamarin.AndroidX.Annotation => 0xdda814c6 => 31
	i32 3724971120, ; 214: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 70
	i32 3754567612, ; 215: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 16
	i32 3758932259, ; 216: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 58
	i32 3786282454, ; 217: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 40
	i32 3822602673, ; 218: Xamarin.AndroidX.Media => 0xe3d849b1 => 68
	i32 3829621856, ; 219: System.Numerics.dll => 0xe4436460 => 21
	i32 3876362041, ; 220: SQLite-net => 0xe70c9739 => 12
	i32 3885922214, ; 221: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 83
	i32 3888767677, ; 222: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 75
	i32 3896760992, ; 223: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 46
	i32 3920810846, ; 224: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 116
	i32 3921031405, ; 225: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 86
	i32 3931092270, ; 226: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 72
	i32 3945713374, ; 227: System.Data.DataSetExtensions.dll => 0xeb2ecede => 114
	i32 3955647286, ; 228: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 34
	i32 3959773229, ; 229: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 62
	i32 3970018735, ; 230: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 101
	i32 4025784931, ; 231: System.Memory => 0xeff49a63 => 20
	i32 4101593132, ; 232: Xamarin.AndroidX.Emoji2 => 0xf479582c => 52
	i32 4105002889, ; 233: Mono.Security.dll => 0xf4ad5f89 => 119
	i32 4151237749, ; 234: System.Core => 0xf76edc75 => 18
	i32 4182413190, ; 235: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 65
	i32 4256097574, ; 236: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 45
	i32 4260525087, ; 237: System.Buffers => 0xfdf2741f => 17
	i32 4278134329, ; 238: Xamarin.GooglePlayServices.Maps.dll => 0xfeff2639 => 100
	i32 4292120959 ; 239: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 65
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [240 x i32] [
	i32 63, i32 97, i32 10, i32 90, i32 79, i32 79, i32 105, i32 40, ; 0..7
	i32 28, i32 81, i32 38, i32 91, i32 57, i32 118, i32 43, i32 61, ; 8..15
	i32 55, i32 30, i32 92, i32 21, i32 59, i32 15, i32 20, i32 42, ; 16..23
	i32 89, i32 54, i32 6, i32 19, i32 55, i32 67, i32 28, i32 113, ; 24..31
	i32 105, i32 0, i32 116, i32 48, i32 53, i32 86, i32 35, i32 26, ; 32..39
	i32 107, i32 27, i32 102, i32 106, i32 13, i32 115, i32 110, i32 74, ; 40..47
	i32 97, i32 106, i32 7, i32 59, i32 3, i32 78, i32 34, i32 94, ; 48..55
	i32 64, i32 104, i32 19, i32 9, i32 10, i32 84, i32 71, i32 35, ; 56..63
	i32 80, i32 85, i32 107, i32 8, i32 14, i32 50, i32 109, i32 78, ; 64..71
	i32 68, i32 44, i32 23, i32 95, i32 115, i32 33, i32 92, i32 29, ; 72..79
	i32 49, i32 2, i32 11, i32 0, i32 66, i32 88, i32 53, i32 47, ; 80..87
	i32 1, i32 24, i32 82, i32 96, i32 43, i32 103, i32 15, i32 39, ; 88..95
	i32 81, i32 18, i32 54, i32 66, i32 104, i32 96, i32 72, i32 89, ; 96..103
	i32 95, i32 91, i32 36, i32 99, i32 69, i32 103, i32 17, i32 64, ; 104..111
	i32 9, i32 60, i32 24, i32 22, i32 56, i32 16, i32 93, i32 98, ; 112..119
	i32 29, i32 108, i32 1, i32 84, i32 67, i32 69, i32 58, i32 76, ; 120..127
	i32 31, i32 52, i32 73, i32 13, i32 42, i32 111, i32 4, i32 114, ; 128..135
	i32 63, i32 85, i32 108, i32 47, i32 51, i32 61, i32 82, i32 30, ; 136..143
	i32 33, i32 90, i32 102, i32 87, i32 77, i32 7, i32 44, i32 25, ; 144..151
	i32 77, i32 98, i32 87, i32 83, i32 117, i32 6, i32 88, i32 22, ; 152..159
	i32 32, i32 50, i32 11, i32 62, i32 80, i32 100, i32 57, i32 3, ; 160..167
	i32 70, i32 101, i32 2, i32 8, i32 112, i32 49, i32 99, i32 119, ; 168..175
	i32 39, i32 37, i32 12, i32 48, i32 112, i32 36, i32 75, i32 71, ; 176..183
	i32 56, i32 14, i32 46, i32 4, i32 76, i32 23, i32 109, i32 25, ; 184..191
	i32 111, i32 27, i32 51, i32 5, i32 113, i32 41, i32 37, i32 26, ; 192..199
	i32 93, i32 117, i32 73, i32 74, i32 94, i32 32, i32 60, i32 5, ; 200..207
	i32 118, i32 38, i32 41, i32 110, i32 45, i32 31, i32 70, i32 16, ; 208..215
	i32 58, i32 40, i32 68, i32 21, i32 12, i32 83, i32 75, i32 46, ; 216..223
	i32 116, i32 86, i32 72, i32 114, i32 34, i32 62, i32 101, i32 20, ; 224..231
	i32 52, i32 119, i32 18, i32 65, i32 45, i32 17, i32 100, i32 65 ; 240..239
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ a8a26c7b003e2524cc98acb2c2ffc2ddea0f6692"}
!llvm.linker.options = !{}
