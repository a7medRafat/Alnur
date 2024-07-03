import 'package:alnur/features/adhkar/view/screens/azhkar_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/colors/app_colors.dart';
import '../../../../config/style/app_fonts.dart';
import '../../../../core/go/go.dart';
import '../../../../core/utils/vContainer.dart';

class AdhkarItem extends StatelessWidget {
  const AdhkarItem({super.key, required this.name, required this.img});

  final String name;
  final String img;

  @override
  Widget build(BuildContext context) {
    return AContainer(
      function: () => Go.goTo(context, const AdhkarContent()),
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(10),
      color: AppColors.headLine1.withOpacity(0.1),
      width: double.infinity,
      borderRadius: BorderRadius.circular(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
                height: 150.h,
                width: double.infinity,
                fit: BoxFit.fitWidth,
                img),
          ),
          SizedBox(height: 5.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Text(name, style: AppFonts.bodyText1),
          )
        ],
      ),
    );
  }
}
