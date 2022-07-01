import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/new_hot/newhot/newhot.dart';
import 'package:netflix_app/domain/new_hot/newhot/result.dart';
import 'package:netflix_app/domain/core/failures/main_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix_app/domain/new_hot/repository/newhot_service.dart';
import 'package:netflix_app/domain/core/api_end_point.dart';

@LazySingleton(as: NewhotService)
class NewHotImplement implements NewhotService {
  @override
  Future<Either<MainFailures, Newhot>> getNewHotResults() async {
    final Response response = await Dio(BaseOptions()).get(ApiEndPoint.newhot);
    try {
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = Newhot.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailures.clientFailure());
      }
    } catch (e) {
      e.toString();
      return const Left(MainFailures.serverFailure());
    }
  }
}
