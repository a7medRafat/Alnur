import 'package:flutter/cupertino.dart';

import '../../../../../config/style/app_fonts.dart';

class PopularText extends StatelessWidget {
  const PopularText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 23, bottom: 20),
      child: Text('Popular', style: AppFonts.bodyText),
    );
  }
}
