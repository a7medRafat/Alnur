import 'package:alnur/features/dashboard/view/screens/dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/colors/app_colors.dart';
import '../../../../../core/go/go.dart';
import '../../../../../core/utils/app_button.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: AppButton(
        function: () => Go.goAndFinish(context, const Dashboard()),
        width: 171.w,
        height: 53.h,
        text: 'Get Started',
        btnColor: AppColors.headLine1,
      ),
    );
  }
}
