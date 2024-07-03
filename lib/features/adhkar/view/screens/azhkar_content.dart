import 'package:alnur/config/style/app_fonts.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/app_bar.dart';
import '../widgets/adhkar_header.dart';
import '../widgets/ahikr_translation.dart';
import '../widgets/fadl.dart';
import '../widgets/zhikr_topic.dart';
import '../widgets/zhikr_transliteration.dart';

class AdhkarContent extends StatelessWidget {
  const AdhkarContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: MyAppBar(
          backColor: Colors.transparent,
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back, color: Colors.white)),
          title: Text('Morning Adhkar',
              style: AppFonts.bodyText1.copyWith(color: Colors.white))),
      body: const Column(
        children: [
          AdhkarHeader(),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                ZhikrTopic(),
                ZhikrTransliteration(),
                ZhikrTranslation(),
                Fadl()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
