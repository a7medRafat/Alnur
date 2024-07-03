import 'dart:convert';
import 'dart:io';

import 'package:alnur/features/adhkar/model/AdhkarModel.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'adhkar_state.dart';

class AdhkarCubit extends Cubit<AdhkarState> {
  AdhkarCubit() : super(AdhkarInitial());

  void getAdhkar()async{
    File file = File('features/adhkar/model/adhkar.json');
    String fileContent = await file.readAsString();
    var jsonData = jsonDecode(fileContent);
    AdhkarModel adhkarModel = AdhkarModel.fromJson(jsonData);

  }

}
