import 'package:alnur/config/style/app_fonts.dart';
import 'package:alnur/core/go/go.dart';
import 'package:alnur/core/utils/vContainer.dart';
import 'package:alnur/features/adhkar/view/screens/adhkar_screen.dart';
import 'package:alnur/features/qibla/view/screens/qibla_screen.dart';
import 'package:alnur/features/surahs/controller/surah_cubit.dart';
import 'package:alnur/features/surahs/view/screens/surahs_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class DashBoardGridView extends StatelessWidget {
  DashBoardGridView({super.key});

  final List<String> strings = [
    'Quran',
    'Azhkar',
    'Recite',
    'Qebla',
  ];
  final List<String> img = [
    'assets/images/quran.png',
    'assets/images/adhkar.png',
    'assets/images/Recite.png',
    'assets/images/qibla.png',
  ];
  final List<Color> colors = [
    const Color(0xff2BFF00).withOpacity(0.1),
    const Color(0xffFEF6F4),
    const Color(0xffFFB92C).withOpacity(0.07),
    const Color(0xffE2F6F8),
  ];

  @override
  Widget build(BuildContext context) {
    return StaggeredGrid.count(
      crossAxisCount: 2,
      mainAxisSpacing: 24,
      crossAxisSpacing: 20,
      children: [
        ...List.generate(
          4,
          (index) {
            return StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: index == 0 ? 1 : 1.2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: GestureDetector(
                    onTap: () async {
                      if (index == 0) {
                        Go.goTo(context, const SurahScreen());
                        context.read<SurahCubit>().getSurahs();
                      }
                      if (index == 1) {
                        Go.goTo(context, AdhkarScreen());
                      }
                      if (index == 3) {
                        Go.goTo(context, const QiblahScreen());
                      }
                    },
                    child: AContainer(
                      padding: const EdgeInsets.all(10),
                      borderRadius: BorderRadius.circular(10),
                      color: colors[index],
                      width: 163.w,
                      height: 191.h,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(strings[index], style: AppFonts.bodyText),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset(img[index], height: 90, width: 90),
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
            );
          },
        ),
      ],
    );
  }
}
