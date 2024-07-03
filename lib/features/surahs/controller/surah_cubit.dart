import 'package:alnur/core/end_points/end_points.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../../core/dio_helper/surah_helper.dart';
import '../model/SurahsModel.dart';

part 'surah_state.dart';

class SurahCubit extends Cubit<SurahState> {
  SurahCubit() : super(SurahInitial());

  void getSurahs() async {
    emit(GetSurahLoadingState());
    try {
      final res = await SurahHelper.getData(url: EndPoints.SURAH);
      if (res.statusCode == 200) {
        SurahsModel surahsModel = SurahsModel.fromJson(res.data);
        emit(GetSurahsSuccessState(model: surahsModel));
      }
    } catch (e) {
      print(e.toString());
      emit(GetSurahsErrorState());
    }
  }
}
