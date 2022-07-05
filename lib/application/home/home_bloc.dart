import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/core/failures/main_failures.dart';
import 'package:netflix_app/domain/home/model/homeimage/homeimage.dart';
import 'package:netflix_app/domain/home/model/homeimage/result.dart';
import 'package:netflix_app/domain/home/repository/home_service.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeService homeService;
  HomeBloc(this.homeService) : super(HomeState.intial()) {
    on<_Started>((event, emit) async {
      final result = await homeService.getHomeImages();
        print('from Bloc ${result.toString()}');
      final state = result.fold((MainFailures l) {
        return HomeState(movieresult: [], isLoading: false, isError: true);
      }, (Homeimage r) {
        return HomeState(
            movieresult: r.results, isLoading:false, isError: false);
      });
      emit(state);
    });
   
  }
}
