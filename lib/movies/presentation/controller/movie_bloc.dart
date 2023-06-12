import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moves_app/core/utils/enums.dart';
import 'package:moves_app/movies/domain/usecases/get_now_playing_use_case.dart';
import 'package:moves_app/movies/domain/usecases/get_popular_movies_use_case.dart';
import 'package:moves_app/movies/domain/usecases/get_top_rated_movies_use_case.dart';

import '../../../core/usecase/base_usecase.dart';
import 'movie_events.dart';
import 'movie_states.dart';

class MovieBloc extends Bloc<MovieEvents, MovieStates> {
  final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;
  final GetPopularMoviesUseCase getPopularMoviesUseCase;
  final GetTopRatedMoviesUseCase getTopRatedMoviesUseCase;

  MovieBloc(
    this.getNowPlayingMoviesUseCase,
    this.getPopularMoviesUseCase,
    this.getTopRatedMoviesUseCase,
  ) : super(const MovieStates()) {
    on<GetNowPlayingMoviesEvent>(_getNowPlayingMoveis);

    on<GetPopularMoviesEvent>(_getPopularMovies);
    on<GetTopRatedMoviesEvent>(_getTopRatedMovies);
  }

  FutureOr<void> _getNowPlayingMoveis(
      GetNowPlayingMoviesEvent event, Emitter<MovieStates> emit) async {
    final result = await getNowPlayingMoviesUseCase.call( const NoParameters() );
    result.fold(
        (l) => emit(state.copyWith(
              newPlayingState: RequestState.error,
              newPlayingMessage: l.message,
            )),
        (r) => emit(
              state.copyWith(
                newPlayingState: RequestState.loaded,
                newPlayingMove: r,
              ),
            ));
  }

  FutureOr<void> _getPopularMovies(
      GetPopularMoviesEvent event, Emitter<MovieStates> emit) async {
    final result = await getPopularMoviesUseCase.call( const NoParameters() );
    result.fold(
        (l) => emit(
              state.copyWith(
                  popularMessage: l.message, popularState: RequestState.error),
            ),
        (r) => emit(state.copyWith(
              popularState: RequestState.loaded,
              popularMove: r,
            )));
  }

  FutureOr<void> _getTopRatedMovies(
      GetTopRatedMoviesEvent event, Emitter<MovieStates> emit) async {
    final result = await getTopRatedMoviesUseCase.call(const NoParameters() );
    result.fold(
            (l) => emit(
          state.copyWith(
              topRatedMessage: l.message, topRatedState: RequestState.error),
        ),
            (r) => emit(state.copyWith(
          topRatedState: RequestState.loaded,
          topRatedMove: r,
        )));
  }



}
