part of 'dash_cubit.dart';

@immutable
abstract class DashState {}

class DashInitial extends DashState {}


class DashBoardLoadingState extends DashState {}

class DashBoardSuccessState extends DashState {
  final PrayTimeModel model;

  DashBoardSuccessState({required this.model});
}

class DashBoardErrorState extends DashState {}
