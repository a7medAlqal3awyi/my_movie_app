import 'package:moves_app/movies/domain/entities/movie.dart';

class MovieModel extends Movie {
  const MovieModel({
    required super.id,
    required super.voteAverage,
    required super.backdropPath,
    required super.title,
    required super.overView,
    required super.genreIds,
    required super.releaseDate,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
        id: json['id'],
        voteAverage: json['vote_average'].toDouble(),
        backdropPath: json['backdrop_path'],
        title: json['title'],
        overView: json['overview'],
        genreIds: List<int>.from(json['genre_ids'].map((e) => e)),
        releaseDate: json['release_date'],
      );
}
