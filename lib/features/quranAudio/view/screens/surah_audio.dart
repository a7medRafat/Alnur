import 'package:alnur/config/Strings/app_strings.dart';
import 'package:alnur/config/colors/app_colors.dart';
import 'package:alnur/core/utils/loading.dart';
import 'package:alnur/core/utils/vContainer.dart';
import 'package:alnur/features/quranAudio/controller/audio_cubit.dart';
import 'package:alnur/features/surahs/model/SurahsModel.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/play_btn.dart';
import '../widgets/timimg.dart';
import '../widgets/audio_ing.dart';

class SurahAudio extends StatefulWidget {
  const SurahAudio({super.key, required this.index, this.data});

  final int index;
  final Data? data;

  @override
  State<SurahAudio> createState() => _SurahAudioState();
}

class _SurahAudioState extends State<SurahAudio> {
  bool isPlaying = false;
  bool running = false;
  bool isLoading = false;
  final audioPlayer = AudioPlayer();
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  String errorMessage = '';

  _play() async {
    String url = AppStrings.Audios[widget.index];
    setState(() {
      isLoading = true;
    });
    if (running == false) {
      await audioPlayer.play(UrlSource(url)).then((v) {
        setState(() {
          running = true;
          isLoading = false;
        });
      });
    }
    if (isPlaying) {
      await audioPlayer.pause();
    } else {
      await audioPlayer.resume();
    }
  }

  @override
  void initState() {
    audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });

    audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    audioPlayer.onPositionChanged.listen((newPosition) {
      setState(() {
        isLoading = false;
        position = newPosition;
      });
    });

    super.initState();
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    running = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xffECF3F2),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AudioImg(),
          AContainer(
            height: 150.h,
            color: AppColors.headLine1.withOpacity(0.2),
            borderRadius: BorderRadius.circular(10),
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Slider(
                  activeColor: AppColors.headLine1,
                  min: 0,
                  max: duration.inSeconds.toDouble(),
                  value: position.inSeconds.toDouble(),
                  onChanged: (value) async {
                    final position = Duration(seconds: value.toInt());
                    await audioPlayer.seek(position);
                    await audioPlayer.resume();
                  },
                ),
                Timing(
                    start: context.read<AudioCubit>().formatTime(position),
                    end: context
                        .read<AudioCubit>()
                        .formatTime(duration - position)),
                isLoading
                    ? Loading(color: AppColors.headLine1)
                    : PlayBtn(function: () => _play(), isPlaying: isPlaying)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
