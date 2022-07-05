import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:netflix_app/domain/core/failures/main_failures.dart';
import 'package:netflix_app/domain/home/model/homeimage/homeimage.dart';

import '../model/homeimage/result.dart';

abstract class HomeService {
   Future<Either<MainFailures,Homeimage>> getHomeImages();
}