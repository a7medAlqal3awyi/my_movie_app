import 'package:equatable/equatable.dart';

import 'genres.dart';

class MovieDetails extends Equatable {
  final String backdropPath;
  final int id;
  final int runTime;
  final String releaseDate;
  final String title;
  final String overview;
  final double voteAverage;
  final List<Genres> genres;

  const MovieDetails({
    required this.backdropPath,
    required this.genres,
    required this.id,
    required this.releaseDate,
    required this.title,
    required this.overview,
    required this.runTime,
    required this.voteAverage,
  });

  @override
  List<Object> get props => [
        backdropPath,
        id,
        releaseDate,
        title,
        overview,
        voteAverage,
        genres,
        runTime
      ];
}
