import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:moves_app/core/error/failure.dart';
import 'package:moves_app/core/usecase/base_usecase.dart';
import 'package:moves_app/movies/domain/entities/movie_details.dart';
import 'package:moves_app/movies/domain/repository/base_movie_repository.dart';

class GetMovieDetailsUsecase extends BaseUsecase<MovieDetails  , MovieDetailsParameters  > {
  final BaseMovieRepository baseMovieRepository;

  GetMovieDetailsUsecase(this.baseMovieRepository);

  @override
  Future<Either<Failure, MovieDetails>> call(MovieDetailsParameters parameters)async {
  return  await baseMovieRepository.getMovieDetails(parameters);
  }

}

class MovieDetailsParameters extends Equatable {
  final int  id;

  const MovieDetailsParameters(this.id);

  @override
  List<Object> get props => [id];
}