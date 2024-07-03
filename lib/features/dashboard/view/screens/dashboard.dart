import 'package:alnur/config/colors/app_colors.dart';
import 'package:alnur/config/style/app_fonts.dart';
import 'package:alnur/core/utils/app_bar.dart';
import 'package:alnur/core/utils/loading.dart';
import 'package:alnur/features/dashboard/controller/dash_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/dashboard/dashboard_header.dart';
import '../widgets/dashboard/grid_view.dart';
import '../widgets/dashboard/populat_text.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: MyAppBar(
      //     title: Text('ALNUR',
      //         style: AppFonts.bodyText.copyWith(color: AppColors.headLine1))),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: BlocBuilder<DashCubit, DashState>(
            builder: (context, state) {
              if (state is DashBoardLoadingState) {
                return const Center(child: Loading());
              }
              if (state is DashBoardSuccessState) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DashboardHeader(
                        month: state.model.data!.date!.hijri!.month!.en!,
                        day: state.model.data!.date!.hijri!.day!.toString(),
                        year: state.model.data!.date!.hijri!.year.toString(),
                        dhuhr: state.model.data!.timings!.dhuhr!,
                        asr: state.model.data!.timings!.asr!,
                        maghrib: state.model.data!.timings!.maghrib!,
                        isha: state.model.data!.timings!.isha!,
                        weekDay:
                            state.model.data!.date!.gregorian!.weekday!.en!),
                    const PopularText(),
                    DashBoardGridView()
                  ],
                );
              }
              return const Loading();
            },
          ),
        ),
      ),
    );
  }
}
