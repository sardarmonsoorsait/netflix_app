import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/application/search/search/search_bloc.dart';
import 'package:netflix_app/domain/core/failures/main_failures.dart';
import 'package:netflix_app/domain/downloads/i_downloads_repo.dart';
import 'package:netflix_app/domain/downloads/models/downloads.dart';
import 'package:netflix_app/infrastructure/downloads_repository.dart';

part 'fastlough_event.dart';
part 'fastlough_state.dart';
part 'fastlough_bloc.freezed.dart';

@injectable
class FastloughBloc extends Bloc<FastloughEvent, FastloughState> {
  final IDownloadsRepo _downloadrepo;
  FastloughBloc(this._downloadrepo) : super(FastloughState.initial()) {
    on<Intialize>((event, emit) async {
      emit(FastloughState(imagelist: [], isLoading: true, isError: false));
      final result = await _downloadrepo.getDownloadsImages();
      final _state = result.fold((MainFailures l) {
        return FastloughState(
          imagelist: [],
          isLoading: false,
          isError: true,
        );
      }, (List<Downloads> r) {
        return FastloughState(imagelist: r, isLoading: false, isError: false);
      });
      emit(_state);
      // TODO: implement event handler
    });
  }
}
