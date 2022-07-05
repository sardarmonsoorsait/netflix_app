import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/core/api_end_point.dart';
import 'package:netflix_app/domain/home/model/homeimage/homeimage.dart';
import 'package:netflix_app/domain/home/model/homeimage/result.dart';
import 'package:netflix_app/domain/core/failures/main_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix_app/domain/home/repository/home_service.dart';

@LazySingleton(as: HomeService)
class HomeServiceImplement implements HomeService {
  @override
  Future<Either<MainFailures, Homeimage>> getHomeImages() async {
    final Response response = await Dio(BaseOptions()).get(ApiEndPoint.home);
    try {
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = Homeimage.fromJson(response.data);
        print('this is from servoice ${result.toString()}');
        return Right(result);
      } else {
        return Left(MainFailures.clientFailure());
      }
    } catch (e) {
      print(e.toString());
      return Left(MainFailures.serverFailure());
    }
  }
}
