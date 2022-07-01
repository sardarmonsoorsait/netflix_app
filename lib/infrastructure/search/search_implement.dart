import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/search/model/search_response/search_response.dart';
import 'package:netflix_app/domain/core/failures/main_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix_app/domain/search/search_service.dart';

import '../../domain/core/api_end_point.dart';

@LazySingleton(as: SearchService)
class SearchImplement implements SearchService {
  @override
  Future<Either<MainFailures, SearchResponse>> searchMovies(
      {required String movieQuery}) async {
    try {
      final Response response = await Dio(BaseOptions())
          .get(ApiEndPoint.search, queryParameters: {'query': movieQuery});

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = SearchResponse.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailures.serverFailure());
      }
    } catch (e) {
      print(e.toString());
      return const Left(MainFailures.clientFailure());
    }
  }
}
