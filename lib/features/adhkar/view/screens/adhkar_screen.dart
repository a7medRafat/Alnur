import 'package:alnur/config/style/app_fonts.dart';
import 'package:alnur/core/utils/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/adhkar_item.dart';

class AdhkarScreen extends StatelessWidget {
  AdhkarScreen({super.key});

  final List<String> adhkarName = [
    'Morning Adhkar',
    'Evening Adhkar',
    'After Pray',
  ];

  final List<String> adhkarImg = [
    'assets/images/morning.jpg',
    'assets/images/evening.jpg',
    'assets/images/afterPray.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text('Adhkar', style: AppFonts.bodyText1),
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back)),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) =>
              AdhkarItem(name: adhkarName[index], img: adhkarImg[index]),
          separatorBuilder: (context, index) => SizedBox(height: 10.h),
          itemCount: 3),
    );
  }
}
