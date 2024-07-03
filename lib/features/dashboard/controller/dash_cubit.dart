import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:intl/intl.dart';
import '../../../core/dio_helper/pray_timing_helper.dart';
import '../model/PrayTimeModel.dart';

part 'dash_state.dart';

class DashCubit extends Cubit<DashState> {
  DashCubit() : super(DashInitial());

  void getPrayTiming() async {
    emit(DashBoardLoadingState());
    final date = DateTime.now();
    String formattedDate = DateFormat('d-MM-yyyy').format(date);

    try {
      final res = await PrayTimingHelper.getData(url: formattedDate, query: {
        'method': 2,
        'latitude': 51.508515,
        'longitude': -0.1254872,
      });
      if (res.statusCode == 200) {
        PrayTimeModel timeModel = PrayTimeModel.fromJson(res.data);
        emit(DashBoardSuccessState(model: timeModel));
      }
    } catch (e) {
      print(e.toString());
      emit(DashBoardErrorState());
    }
  }
}
