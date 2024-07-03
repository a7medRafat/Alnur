import 'package:alnur/core/go/go.dart';
import 'package:alnur/features/quran/controller/quran_cubit.dart';
import 'package:alnur/features/quran/view/screens/quran_screen.dart';
import 'package:alnur/features/surahs/model/SurahsModel.dart';
import 'package:alnur/features/surahs/view/widgets/play_read.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/vContainer.dart';
import 'numberAndName.dart';

class SurahItem extends StatelessWidget {
  const SurahItem(
      {super.key,
      required this.number,
      required this.fun,
      required this.index,
      required this.surahsModel});

  final int number;
  final int index;
  final SurahsModel surahsModel;
  final Function() fun;

  @override
  Widget build(BuildContext context) {
    return AContainer(
      function: () {
        context
            .read<QuranCubit>()
            .getQuran(surahNumber: number);
        Go.goTo(
            context,
            QuranScreen(
                surahNum: surahsModel.data![index].number!,
                index: index,
                surahsModel: surahsModel));
      },
      border: Border.all(color: Colors.grey, width: 0.6),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NumberAndName(
            number: surahsModel.data![index].number!,
            name: surahsModel.data![index].name!,
            englishName: surahsModel.data![index].englishName!,
          ),
          PlayRead(fun: fun),
        ],
      ),
    );
  }
}
