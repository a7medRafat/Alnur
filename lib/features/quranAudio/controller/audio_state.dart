part of 'audio_cubit.dart';

@immutable
abstract class AudioState {}

class AudioInitial extends AudioState {}

class GetAudiosLoadingState extends AudioState {}

class GetAudiosErrorState extends AudioState {}

class GetAudiosSuccessState extends AudioState {
  final List<String> list;

  GetAudiosSuccessState({required this.list});
}
