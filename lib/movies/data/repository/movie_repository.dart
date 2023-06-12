import 'package:dartz/dartz.dart';
import 'package:moves_app/core/error/exceptions.dart';
import 'package:moves_app/core/error/failure.dart';
import 'package:moves_app/movies/data/data_source/movie_remorte_data_source.dart';
import 'package:moves_app/movies/domain/entities/movie.dart';
import 'package:moves_app/movies/domain/entities/movie_details.dart';
import 'package:moves_app/movies/domain/entities/recommendation.dart';
import 'package:moves_app/movies/domain/usecases/get_movie_detais_usecase.dart';
import 'package:moves_app/movies/domain/usecases/get_movie_recommendation_usecase.dart';

import '../../domain/repository/base_movie_repository.dart';

class MovieRepository extends BaseMovieRepository {
  final BaseMovieRemoteDataSource baseMovieRemoteDataSource;

  MovieRepository(this.baseMovieRemoteDataSource);

  @override
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies() async {
    final result = await baseMovieRemoteDataSource.getNowPlayingMovies();
    try {
      return Right(result);
    } on ServerExceptions catch (fa) {
      return Left(ServerFailure(fa.errorMassageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getPopularMovies() async {
    final result = await baseMovieRemoteDataSource.getPopularMovies();
    try {
      return Right(result);
    } on ServerExceptions catch (failure) {
      return Left(ServerFailure(failure.errorMassageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRateMovies() async {
    final result = await baseMovieRemoteDataSource.getTopRatedMovies();
    try {
      return Right(result);
    } on ServerExceptions catch (failure) {
      return Left(ServerFailure(failure.errorMassageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, MovieDetails>> getMovieDetails(
      MovieDetailsParameters parameters) async {
    final result = await baseMovieRemoteDataSource.getMovieDetails(parameters);
    try {
      return Right(result);
    } on ServerExceptions catch (failure) {
      return Left(ServerFailure(failure.errorMassageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Recommendation>>> getRecommendation(RecommendationParameter parameter) async{
    final result = await baseMovieRemoteDataSource.getRecommendation(parameter);
    try {
      return Right(result);
    } on ServerExceptions catch (failure) {
      return Left(ServerFailure(failure.errorMassageModel.statusMessage));
    }
  }

}

