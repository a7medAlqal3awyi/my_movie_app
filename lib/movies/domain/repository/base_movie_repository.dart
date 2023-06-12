import 'package:dartz/dartz.dart';
import 'package:moves_app/movies/domain/entities/movie.dart';
import 'package:moves_app/movies/domain/entities/movie_details.dart';
import 'package:moves_app/movies/domain/entities/recommendation.dart';
import 'package:moves_app/movies/domain/usecases/get_movie_detais_usecase.dart';
import 'package:moves_app/movies/domain/usecases/get_movie_recommendation_usecase.dart';

import '../../../core/error/failure.dart';

// Contract
abstract class BaseMovieRepository {

  Future<Either<Failure, List<Movie>>> getNowPlayingMovies();

  Future<Either<Failure, List<Movie>>> getPopularMovies();

  Future<Either<Failure, List<Movie>>> getTopRateMovies();

  Future<Either<Failure,MovieDetails > > getMovieDetails(MovieDetailsParameters parameters) ;

  Future<Either<Failure, List<Recommendation>>> getRecommendation(
      RecommendationParameter parameter
      );

}
