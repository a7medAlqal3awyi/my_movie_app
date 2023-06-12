import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final int id;
  final double voteAverage;
  final String backdropPath;
  final String title;
  final String overView;
  final String releaseDate;
  final List<int> genreIds;

  const Movie(
      {required this.id,
      required this.voteAverage,
      required this.backdropPath,
      required this.title,
      required this.overView,
      required this.releaseDate,
      required this.genreIds,
      });


  @override
  List<Object> get props => [
        id,
        voteAverage,
        backdropPath,
        title,
        overView,
        genreIds,
        releaseDate,
      ];
}
