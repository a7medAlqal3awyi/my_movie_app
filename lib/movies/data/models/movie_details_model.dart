import 'package:moves_app/movies/data/models/geners_model.dart';
import 'package:moves_app/movies/domain/entities/movie_details.dart';

class MovieDetailsModel extends MovieDetails {
  const MovieDetailsModel(
      {required super.backdropPath,
      required super.genres,
      required super.id,
      required super.runTime,
      required super.releaseDate,
      required super.title,
      required super.overview,
      required super.voteAverage});

  factory MovieDetailsModel.fromJsom(Map<String, dynamic> json) {
    return MovieDetailsModel(
      backdropPath: json['backdrop_path'],
      genres:List<GenersModel>.from(json['genres'].map((x)=>GenersModel.fromJson(x))),
      runTime: json['runtime'],
      id: json['id'],
      releaseDate: json['release_date'],
      title: json['title'],
      overview: json['overview'],
      voteAverage: json['vote_average'].toDouble(),
    );
  }
}
