import 'package:alnur/config/colors/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../config/style/app_fonts.dart';

class ZhikrTransliteration extends StatelessWidget {
  const ZhikrTransliteration({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              textAlign: TextAlign.start,
              'Alḥamdulillahi waḥdah waṣ-ṣalatu was-salam `alā man lā nabiyya ba`dah.',
              style: AppFonts.bodyText2.copyWith(color: AppColors.darkGray),
            ),
          )
        ],
      ),
    );
  }
}
