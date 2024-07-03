part of 'quran_cubit.dart';

@immutable
abstract class QuranState {}

class QuranInitial extends QuranState {}

class GetQuranLoadingState extends QuranState {}

class GetQuranErrorState extends QuranState {}

class GetQuranSuccessState extends QuranState {
  final QuranModel model;

  GetQuranSuccessState({required this.model});
}



