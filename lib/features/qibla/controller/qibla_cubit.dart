import 'package:alnur/core/shared_preferances/cache_helper.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:permission_handler/permission_handler.dart';

part 'qibla_state.dart';

class QiblaCubit extends Cubit<QiblaState> {
  QiblaCubit() : super(QiblaInitial());



  Future getPermission() async {
    bool hasPermission = false;
    if (await Permission.location.serviceStatus.isEnabled) {
      var status = await Permission.location.status;
      if (status.isGranted) {
        hasPermission = true;
        CacheHelper.saveData(key: 'hasPermission', value: hasPermission);
      } else {
        Permission.location.request().then((value) {
          hasPermission = (value == PermissionStatus.granted);
          CacheHelper.saveData(key: 'hasPermission', value: hasPermission);
          emit(GetPermissionSuccessState());
        });
      }
    }
  }
}
