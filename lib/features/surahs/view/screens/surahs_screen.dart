import 'package:flutter/material.dart';
import '../widgets/header.dart';
import '../widgets/surah_listview.dart';

class SurahScreen extends StatelessWidget {
  const SurahScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [SurahHeader(), SurahListView()],
        ),
      ),
    );
  }
}
