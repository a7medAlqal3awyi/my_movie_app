
import 'package:get_it/get_it.dart';
import 'package:moves_app/movies/data/data_source/movie_remorte_data_source.dart';
import 'package:moves_app/movies/data/repository/movie_repository.dart';
import 'package:moves_app/movies/domain/repository/base_movie_repository.dart';
import 'package:moves_app/movies/domain/usecases/get_movie_detais_usecase.dart';
import 'package:moves_app/movies/domain/usecases/get_movie_recommendation_usecase.dart';
import 'package:moves_app/movies/domain/usecases/get_now_playing_use_case.dart';
import 'package:moves_app/movies/domain/usecases/get_top_rated_movies_use_case.dart';
import 'package:moves_app/movies/presentation/controller/movie_bloc.dart';
import 'package:moves_app/movies/presentation/controller/movie_details_bloc.dart';

import '../movies/domain/usecases/get_popular_movies_use_case.dart';

final sl = GetIt.instance;
class ServicesLocator{
  void init()
  {
    sl.registerFactory(() =>MovieBloc( sl() ,sl() ,sl() ));
    sl.registerFactory(() =>MovieDetailsBloc(sl(),sl()));
    /// USECASES
    sl.registerLazySingleton(() => GetNowPlayingMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetPopularMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetTopRatedMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetMovieDetailsUsecase(sl()));
    sl.registerLazySingleton(() => GetMovieRecommendationUsecase(sl()));
    ///REPOSITORY
    sl.registerLazySingleton<BaseMovieRepository>(() => MovieRepository(sl()));
    /// DATA SOURCE
    sl.registerLazySingleton<BaseMovieRemoteDataSource>(() =>MovieRemoteDataSource() );
  }
}