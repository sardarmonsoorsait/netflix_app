// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/downloads/downloads_bloc.dart' as _i11;
import '../../../application/fast_lough/fastlough_bloc.dart' as _i12;
import '../../../application/newhot/newhot_bloc.dart' as _i13;
import '../../../application/search/search/search_bloc.dart' as _i14;
import '../../../application/watching/bloc/watching_bloc.dart' as _i15;
import '../../../infrastructure/downloads_repository.dart' as _i4;
import '../../../infrastructure/newhot/new_hot_implementation.dart' as _i6;
import '../../../infrastructure/search/search_implement.dart' as _i8;
import '../../../infrastructure/watching/watching_implement.dart' as _i10;
import '../../downloads/i_downloads_repo.dart' as _i3;
import '../../new_hot/repository/newhot_service.dart' as _i5;
import '../../search/search_service.dart' as _i7;
import '../../watching/watching_service.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IDownloadsRepo>(() => _i4.DownloadsRepository());
  gh.lazySingleton<_i5.NewhotService>(() => _i6.NewHotImplement());
  gh.lazySingleton<_i7.SearchService>(() => _i8.SearchImplement());
  gh.lazySingleton<_i9.WatchingService>(() => _i10.WatchingImplement());
  gh.factory<_i11.DownloadsBloc>(
      () => _i11.DownloadsBloc(get<_i3.IDownloadsRepo>()));
  gh.factory<_i12.FastloughBloc>(
      () => _i12.FastloughBloc(get<_i3.IDownloadsRepo>()));
  gh.factory<_i13.NewhotBloc>(() => _i13.NewhotBloc(get<_i5.NewhotService>()));
  gh.factory<_i14.SearchBloc>(() =>
      _i14.SearchBloc(get<_i3.IDownloadsRepo>(), get<_i7.SearchService>()));
  gh.factory<_i15.WatchingBloc>(
      () => _i15.WatchingBloc(get<_i9.WatchingService>()));
  return get;
}
