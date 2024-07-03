part of 'surah_cubit.dart';

@immutable
abstract class SurahState {}

class SurahInitial extends SurahState {}

class GetSurahLoadingState extends SurahState {}

class GetSurahsErrorState extends SurahState {}

class GetSurahsSuccessState extends SurahState {
  final SurahsModel model;

  GetSurahsSuccessState({required this.model});
}
