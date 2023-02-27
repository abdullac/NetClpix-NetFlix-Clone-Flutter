import 'package:netclipxsample/infrastructure/core/api_keys/api_key.dart';

class Url {
  static const String baseUrl = "https://api.themoviedb.org/3";
  static const String endPointDownloads = "$baseUrl/trending/all/day?api_key=$apiKey";
  static const String endPointTopSearches = "$baseUrl/trending/all/day?api_key=$apiKey";
  static const String endPointSearcheResultss = "$baseUrl/search/movie?api_key=$apiKey&language=en-US&page=1&include_adult=false&query=";
  static const String endPointUpcoming = "$baseUrl/movie/upcoming?api_key=$apiKey";
  static const String endPointNowPlaying = "$baseUrl/movie/now_playing?api_key=$apiKey";
  static const String endPointPopular = "$baseUrl/movie/popular?api_key=$apiKey";
}
