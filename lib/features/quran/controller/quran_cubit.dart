import 'package:alnur/features/quran/model/QuranModel.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
part 'quran_state.dart';

class QuranCubit extends Cubit<QuranState> {
  QuranCubit() : super(QuranInitial());

  void getQuran({required int surahNumber}) async {
    emit(GetQuranLoadingState());
    Dio dio = Dio();
    String url =
        'https://api.alquran.cloud/v1/surah/$surahNumber/editions/quran-uthmani,en.asad';
    final response = await dio.get(url);
    try {
      if (response.statusCode == 200) {
        QuranModel quranModel = QuranModel.fromJson(response.data);
        emit(GetQuranSuccessState(model: quranModel));
      }
    } on DioException catch (e) {
      print(e.toString());
      GetQuranErrorState();
    }
  }
}
