import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/core/failures/main_failures.dart';
import 'package:netflix_app/domain/downloads/i_downloads_repo.dart';
import 'package:netflix_app/domain/search/model/search_response/search_response.dart';
import 'package:netflix_app/domain/search/search_service.dart';

import '../../../domain/downloads/models/downloads.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IDownloadsRepo _downloadsService;
  final SearchService _searchService;
  SearchBloc(this._downloadsService, this._searchService)
      : super(SearchState.initial()) {
    /**
     * idle state
     */
    on<Intialize>((event, emit) async {
      emit(SearchState(
          searchResultList: [], idleList: [], isLoading: true, isError: false));
      final result = await _downloadsService.getDownloadsImages();
      final state = result.fold((MainFailures l) {
        return (SearchState(
            searchResultList: [],
            idleList: [],
            isLoading: false,
            isError: true));
      }, (List<Downloads> r) {
        return (SearchState(
            searchResultList: [],
            idleList: r,
            isLoading: false,
            isError: false));
      });
      emit(state);
    });
    /**
     * searchmoviestate
     
     */
    on<SearchMovie>(
      (event, emit) {
        _searchService.searchMovies(movieQuery: event.movieQuery);
      },
    );
  }
}
