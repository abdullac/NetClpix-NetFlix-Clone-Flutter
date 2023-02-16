import 'package:netclipxsample/infrastructure/api_keys/api_key.dart';

class Url {
  static const String baseUrl = "https://api.themoviedb.org/3";
  static const String endPoint = "$baseUrl/trending/all/day?api_key=$apiKey";
}
