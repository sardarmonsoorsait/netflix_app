import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/application/fast_lough/fastlough_bloc.dart';
import 'package:netflix_app/domain/new_hot/newhot/newhot.dart';
import 'package:netflix_app/domain/new_hot/newhot/result.dart';
import 'package:netflix_app/domain/new_hot/repository/newhot_service.dart';
import 'package:netflix_app/infrastructure/newhot/new_hot_implementation.dart';

part 'newhot_event.dart';
part 'newhot_state.dart';
part 'newhot_bloc.freezed.dart';

@injectable
class NewhotBloc extends Bloc<NewhotEvent, NewhotState> {
  NewhotService _newhotService;
  NewhotBloc(this._newhotService) : super(NewhotState.initial()) {
    on<_Intialize>((event, emit) async {
      final _result = await _newhotService.getNewHotResults();
      final state = _result.fold((l) {
        return NewhotState(movieList: [], isLoading: false, isError: true);
      }, (r) {
        return NewhotState(
            movieList: r.results, isLoading: false, isError: false);
      });
      emit(state);
    });
  }
}
