import 'package:alnur/core/go/go.dart';
import 'package:alnur/core/utils/loading.dart';
import 'package:alnur/features/quran/controller/quran_cubit.dart';
import 'package:alnur/features/quranAudio/view/screens/surah_audio.dart';
import 'package:alnur/features/surahs/controller/surah_cubit.dart';
import 'package:alnur/features/surahs/view/widgets/surah__item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SurahListView extends StatelessWidget {
  const SurahListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SurahCubit, SurahState>(
      buildWhen: (previous, current) => current is GetSurahsSuccessState,
      builder: (context, state) {
        if (state is GetQuranLoadingState) {
          return const Center(child: Loading());
        } else if (state is GetSurahsSuccessState) {
          return SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => SurahItem(
                        number: index + 1,
                        fun: () => Go.goTo(
                            context,
                            SurahAudio(
                                index: index, data: state.model.data![index])),
                        index: index,
                        surahsModel: state.model,
                      ),
                  separatorBuilder: (context, index) => SizedBox(height: 10.h),
                  itemCount: state.model.data!.length),
            ),
          );
        }
        return const Loading();
      },
    );
  }
}
