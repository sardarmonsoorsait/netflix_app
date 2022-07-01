import 'package:netflix_app/core/strings.dart';
import 'package:netflix_app/infrastructure/api_key.dart';
import 'package:netflix_app/domain/core/api_end_point.dart';


class ApiEndPoint {
  static const downloads = '$kbaseurl/trending/all/day?api_key=$apiKey';
  static const search =
      '$kbaseurl/search/movie?api_key=$apiKey&language=en-US&';
  static const newhot =
      '$kbaseurl/discover/movie?api_key=$apiKey&language=en-US&sort_by=popularity.desc&include_adult=false&include_video=false&page=1&with_watch_monetization_types=flatrate#';
  static const watching =
      '$kbaseurl/discover/tv?api_key=$apiKey&language=en-US&sort_by=popularity.desc&page=1&timezone=America%2FNew_York&include_null_first_air_dates=false&with_watch_monetization_types=flatrate&with_status=0&with_type=0';
}
