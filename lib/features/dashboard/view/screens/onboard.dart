import 'package:alnur/core/functions/app_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/vContainer.dart';
import '../widgets/boarding/circles.dart';
import '../widgets/boarding/get_started.dart';
import '../widgets/boarding/mushaf.dart';
import '../widgets/boarding/name.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {

  @override
  void initState(){
    AppFunctions.getCurrentPosition(context);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AContainer(
        color: Colors.white38,
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            const Circles(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Mushaf(),
                  const Name(),
                  SizedBox(height: 15.h),
                  const GetStarted()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
