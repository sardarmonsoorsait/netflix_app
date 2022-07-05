import 'package:dartz/dartz.dart';
import 'package:netflix_app/domain/core/failures/main_failures.dart';
import 'package:netflix_app/domain/new_hot/newhot/result.dart';
import 'package:netflix_app/domain/watching/models/watching.dart';

abstract class WatchingService {
  Future<Either<MainFailures, Watching>> getWatchingImages();
}
