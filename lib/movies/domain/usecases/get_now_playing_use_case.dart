import 'package:dartz/dartz.dart';
import 'package:moves_app/core/usecase/base_usecase.dart';
import 'package:moves_app/movies/domain/repository/base_movie_repository.dart';

import '../../../core/error/failure.dart';
import '../entities/movie.dart';

class GetNowPlayingMoviesUseCase  extends BaseUsecase <List<Movie>  , NoParameters >{
  final BaseMovieRepository baseMovieRepository;

  GetNowPlayingMoviesUseCase (this.baseMovieRepository);

  @override
  Future<Either<Failure, List<Movie>>> call(NoParameters parameters) async {
    return await baseMovieRepository.getNowPlayingMovies();
  }


}
