part of 'newhot_bloc.dart';

@freezed
class NewhotState with _$NewhotState {
  const factory NewhotState({
    required List<Result> movieList,
    required bool isLoading,
    required bool isError,
  }) = _NewhotState;
  factory NewhotState.initial() =>
      const NewhotState(movieList: [], isLoading: false, isError: false);
}
