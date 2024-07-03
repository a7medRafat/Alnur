import 'package:alnur/config/colors/app_colors.dart';
import 'package:alnur/core/utils/loading.dart';
import 'package:alnur/features/quran/controller/quran_cubit.dart';
import 'package:alnur/features/surahs/model/SurahsModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/ayaah_item.dart';
import '../widgets/surah_header.dart';

class QuranScreen extends StatelessWidget {
  const QuranScreen(
      {super.key,
      required this.surahNum,
      required this.index,
      required this.surahsModel});

  final int surahNum;
  final int index;
  final SurahsModel surahsModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.quranBackground,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SurahInfo(surahName: surahsModel.data![index].englishName!),
            SizedBox(height: 10.h),
            BlocBuilder<QuranCubit, QuranState>(
              builder: (context, state) {
                if (state is GetQuranLoadingState) {
                  return const Center(child: Loading());
                }
                if (state is GetQuranSuccessState) {
                  return SizedBox(
                    child: ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) => AyahsItem(
                            arAyah: state.model.data![0].ayahs![index].text!,
                            enAyah: state.model.data![1].ayahs![index].text!),
                        separatorBuilder: (context, index) =>
                            SizedBox(height: 5.h),
                        itemCount: state.model.data![0].ayahs!.length),
                  );
                }
                return const Center(child: Loading());
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.quranBackground,
        child: Icon(Icons.arrow_back, color: Colors.black,size: 20.sp),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
