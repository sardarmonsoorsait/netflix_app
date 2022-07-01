part of 'fastlough_bloc.dart';

@freezed
class FastloughState with _$FastloughState {
  const factory FastloughState({
    required final List<Downloads> imagelist,
    required final bool isLoading,
    required final bool isError,
  }) = _FastloughState;
  factory FastloughState.initial() =>
      const FastloughState(imagelist: [], isLoading: false, isError: false);
}
