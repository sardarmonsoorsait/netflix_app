// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/downloads/downloads_bloc.dart' as _i13;
import '../../../application/fast_lough/fastlough_bloc.dart' as _i14;
import '../../../application/home/home_bloc.dart' as _i15;
import '../../../application/newhot/newhot_bloc.dart' as _i16;
import '../../../application/search/search/search_bloc.dart' as _i17;
import '../../../application/watching/bloc/watching_bloc.dart' as _i18;
import '../../../infrastructure/downloads_repository.dart' as _i6;
import '../../../infrastructure/home/home_service_implementation.dart' as _i4;
import '../../../infrastructure/newhot/new_hot_implementation.dart' as _i8;
import '../../../infrastructure/search/search_implement.dart' as _i10;
import '../../../infrastructure/watching/watching_implement.dart' as _i12;
import '../../downloads/i_downloads_repo.dart' as _i5;
import '../../home/repository/home_service.dart' as _i3;
import '../../new_hot/repository/newhot_service.dart' as _i7;
import '../../search/search_service.dart' as _i9;
import '../../watching/watching_service.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.HomeService>(() => _i4.HomeServiceImplement());
  gh.lazySingleton<_i5.IDownloadsRepo>(() => _i6.DownloadsRepository());
  gh.lazySingleton<_i7.NewhotService>(() => _i8.NewHotImplement());
  gh.lazySingleton<_i9.SearchService>(() => _i10.SearchImplement());
  gh.lazySingleton<_i11.WatchingService>(() => _i12.WatchingImplement());
  gh.factory<_i13.DownloadsBloc>(
      () => _i13.DownloadsBloc(get<_i5.IDownloadsRepo>()));
  gh.factory<_i14.FastloughBloc>(
      () => _i14.FastloughBloc(get<_i5.IDownloadsRepo>()));
  gh.factory<_i15.HomeBloc>(() => _i15.HomeBloc(get<_i3.HomeService>()));
  gh.factory<_i16.NewhotBloc>(() => _i16.NewhotBloc(get<_i7.NewhotService>()));
  gh.factory<_i17.SearchBloc>(() =>
      _i17.SearchBloc(get<_i5.IDownloadsRepo>(), get<_i9.SearchService>()));
  gh.factory<_i18.WatchingBloc>(
      () => _i18.WatchingBloc(get<_i11.WatchingService>()));
  return get;
}
