import 'package:alnur/features/dashboard/view/widgets/dashboard/pray_location.dart';
import 'package:alnur/features/dashboard/view/widgets/dashboard/pray_timing.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/vContainer.dart';
import 'date_hijir.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({
    super.key,
    required this.month,
    required this.day,
    required this.year,
    required this.dhuhr,
    required this.asr,
    required this.maghrib,
    required this.isha,
    required this.weekDay,
  });

  final String month;
  final String day;
  final String year;
  final String dhuhr;
  final String asr;
  final String maghrib;
  final String isha;
  final String weekDay;

  @override
  Widget build(BuildContext context) {
    return AContainer(
      padding: const EdgeInsets.all(15),
      borderRadius: BorderRadius.circular(10),
      color: const Color(0xff409f83),
      decorationImage: const DecorationImage(
        opacity: 0.1,
        image: AssetImage('assets/images/mosque.jpg'),
        fit: BoxFit.cover,
      ),
      child: Column(
        children: [
          DateHijir(month: month, day: day, year: year, weekDay: weekDay),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const PrayLocation(),
              PrayTiming(dhuhr: dhuhr, asr: asr, maghrib: maghrib, isha: isha)
            ],
          ),
        ],
      ),
    );
  }
}
