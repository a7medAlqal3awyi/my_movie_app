
class ApiConstance {
  static const baseUrl = "https://api.themoviedb.org/3";
  static const apiKey = "e94e64f960f8afb475c331d3656b733a";

  // Api of Now Playing ===>  https://api.thishemoviedb.org/3/movie/now_playing?api_key=e94e64f960f8afb475c331d3656b733a
  static const getNowPlayingPath = "$baseUrl/movie/now_playing?api_key=$apiKey";

// Api of Popular = ==>   https://api.themoviedb.org/3/movie/popular?api_key=e94e64f960f8afb475c331d3656b733a
  static const getPopularMoviesPath = "$baseUrl/movie/popular?api_key=$apiKey";

// Api of top Rated ===> https://api.themoviedb.org/3/movie/top_rated?api_key=e94e64f960f8afb475c331d3656b733a

  static const getTopRatedMoviesPath =
      "$baseUrl/movie/top_rated?api_key=$apiKey";

  // Api of movie Details =====>https://api.themoviedb.org/3/movie/550?api_key=e94e64f960f8afb475c331d3656b733a
  static getMovieDetailsPath(int movieId) =>
      "$baseUrl/movie/$movieId?api_key=$apiKey";

//Api of movie Recommendation =====> https://api.themoviedb.org/3/movie/550/recommendations?api_key=e94e64f960f8afb475c331d3656b733a

  static getMovieRecommendationPath(int movieId) =>
      "$baseUrl/movie/$movieId/recommendations?api_key=$apiKey";



  static const baseImageUrl = "https://image.tmdb.org/t/p/w500/";

  static String imageUrl(String path) => '$baseImageUrl$path';
}
