import 'package:alnur/features/quran/controller/quran_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

GetIt sl = GetIt.instance;

Future<void> init() async {


  sl.registerLazySingleton<QuranCubit>(()=>QuranCubit());


}
