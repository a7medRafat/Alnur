import 'package:alnur/features/dashboard/view/screens/dashboard.dart';
import 'package:alnur/features/dashboard/view/screens/onboard.dart';
import 'package:alnur/features/qibla/controller/qibla_cubit.dart';
import 'package:alnur/features/quranAudio/controller/audio_cubit.dart';
import 'package:alnur/features/quran/controller/quran_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../config/style/app_themes.dart';
import '../features/dashboard/controller/dash_cubit.dart';
import '../features/surahs/controller/surah_cubit.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) => MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => DashCubit()..getPrayTiming()),
          BlocProvider(create: (context) => QiblaCubit()..getPermission()),
          BlocProvider(create: (context) => SurahCubit()),
          BlocProvider(create: (context) => QuranCubit()),
          BlocProvider(create: (context) => AudioCubit()),
        ],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: appTheme(),
            home: const Onboard()),
      ),
    );
  }
}
