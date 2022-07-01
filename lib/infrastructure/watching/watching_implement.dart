import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/new_hot/newhot/result.dart';
import 'package:netflix_app/domain/core/failures/main_failures.dart';
import 'package:netflix_app/domain/watching/watching_service.dart';
import 'package:netflix_app/domain/core/api_end_point.dart';

import '../../domain/watching/models/watching.dart';

@LazySingleton(as: WatchingService)
class WatchingImplement implements WatchingService {
  @override
  Future<Either<MainFailures, Watching>> getWatchingImages() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoint.watching);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = Watching.fromJson(response.data);
        return Right(result);
      } else {
        return Left(MainFailures.clientFailure());
      }
    } catch (e) {
      e.toString();
      return left(MainFailures.clientFailure());
    }
  }
}
