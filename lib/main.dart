import 'package:alnur/core/dio_helper/surah_helper.dart';
import 'package:alnur/core/functions/app_functions.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app/injuctoin_container.dart' as di;
import 'App/bloc_observer.dart';
import 'App/myapp.dart';
import 'core/dio_helper/dio_helper.dart';
import 'core/dio_helper/pray_timing_helper.dart';
import 'core/shared_preferances/cache_helper.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  Bloc.observer = MyBlocObserver();
  // await Hive.initFlutter();
  // Hive.registerAdapter(ProfileDataAdapter());
  // await UserData().init();
  await di.init();
  QuranHelper.init();
  SurahHelper.init();
  PrayTimingHelper.init();
  await CacheHelper.init();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  runApp(const MyApp());
}
