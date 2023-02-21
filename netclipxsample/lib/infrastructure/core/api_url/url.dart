import 'package:netclipxsample/infrastructure/core/api_keys/api_key.dart';

class Url {
  static const String baseUrl = "https://api.themoviedb.org/3";
  static const String endPointDownloads = "$baseUrl/trending/all/day?api_key=$apiKey";
}
