import 'package:dartz/dartz.dart';
import 'package:moves_app/core/usecase/base_usecase.dart';
import 'package:moves_app/movies/domain/entities/movie.dart';
import 'package:moves_app/movies/domain/repository/base_movie_repository.dart';

import '../../../core/error/failure.dart';

class GetPopularMoviesUseCase extends BaseUsecase<List<Movie> , NoParameters >{

  final BaseMovieRepository baseMovieRepository ;
  GetPopularMoviesUseCase(this.baseMovieRepository);

  @override
  Future<Either<Failure ,List<Movie>> >  call(NoParameters parameters)async{
    return await baseMovieRepository.getPopularMovies();
  }
}