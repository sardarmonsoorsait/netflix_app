import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/watching/models/result.dart';
import 'package:netflix_app/domain/watching/watching_service.dart';

part 'watching_event.dart';
part 'watching_state.dart';
part 'watching_bloc.freezed.dart';

@injectable
class WatchingBloc extends Bloc<WatchingEvent, WatchingState> {
  WatchingService _watchingservice;
  WatchingBloc(this._watchingservice) : super(WatchingState.initial()) {
    on<Intialized>((event, emit) async {
      emit(WatchingState(isError: false, isLoading: true, tvList: []));
      final _result = await _watchingservice.getWatchingImages();
      print('this is from bloc $_result');
      final state = _result.fold((l) {
        return WatchingState(tvList: [], isLoading: false, isError: true);
      }, (r) {
        return WatchingState(
            tvList: r.results, isLoading: false, isError: false);
      });
      emit(state);
    });
  }
}
