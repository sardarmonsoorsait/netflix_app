part of 'watching_bloc.dart';

@freezed
class WatchingState with _$WatchingState {
  const factory WatchingState({
    required List<Result> tvList,
    required bool isLoading,
    required bool isError,
  }) = _WatchingState;
  factory WatchingState.initial() =>
      WatchingState(tvList: [], isLoading: true, isError: false);
}
