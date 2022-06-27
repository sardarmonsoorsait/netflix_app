part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.intialize() = Intialize;
  const factory SearchEvent.searchmovie({
    required String movieQuery,
  }) = SearchMovie;
}