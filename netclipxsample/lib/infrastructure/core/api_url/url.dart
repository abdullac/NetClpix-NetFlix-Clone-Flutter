import 'package:netclipxsample/infrastructure/core/api_keys/api_key.dart';
import 'package:netclipxsample/infrastructure/core/your_api_key/your_api_key.dart';

class Url {
  static const String baseUrl = "https://api.themoviedb.org/3";
  static final String endPointDownloads = "$baseUrl/trending/all/day?api_key=$yourApiKey";
  static final String endPointTopSearches = "$baseUrl/trending/all/day?api_key=$yourApiKey";
  static final String endPointSearcheResultss = "$baseUrl/search/movie?api_key=$yourApiKey&language=en-US&page=1&include_adult=false&query=";
  static final String endPointUpcoming = "$baseUrl/movie/upcoming?api_key=$yourApiKey";
  static final String endPointNowPlaying = "$baseUrl/movie/now_playing?api_key=$yourApiKey";
  static final String endPointPopular = "$baseUrl/movie/popular?api_key=$yourApiKey";
}
