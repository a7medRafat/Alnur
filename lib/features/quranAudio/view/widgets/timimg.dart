import 'package:flutter/cupertino.dart';

class Timing extends StatelessWidget {
  const Timing({super.key, required this.start, required this.end});

  final String start;
  final String end;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(start),
          Text(end),
        ],
      ),
    );
  }
}
