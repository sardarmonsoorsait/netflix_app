import 'package:netflix_app/core/strings.dart';
import 'package:netflix_app/infrastructure/api_key.dart';

class ApiEndPoint {
  static const downloads = '$kbaseurl/trending/all/day?api_key=$apiKey';
  static const search =
      '$kbaseurl/search/movie?api_key=$apiKey&language=en-US&';
}
