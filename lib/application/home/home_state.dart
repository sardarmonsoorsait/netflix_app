part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required List<Result> movieresult,
    required bool isLoading,
    required bool isError,
  }) = _HomeState;
  factory HomeState.intial() =>
      HomeState(movieresult: [], isError: false, isLoading: false);
}
