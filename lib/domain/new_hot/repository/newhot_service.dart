import 'package:dartz/dartz.dart';
import 'package:netflix_app/domain/core/failures/main_failures.dart';
import 'package:netflix_app/domain/new_hot/newhot/newhot.dart';
import 'package:netflix_app/domain/new_hot/newhot/result.dart';

abstract class NewhotService {
  Future<Either<MainFailures, Newhot>> getNewHotResults();
}
