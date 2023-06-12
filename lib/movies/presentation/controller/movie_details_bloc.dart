import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:moves_app/core/utils/enums.dart';
import 'package:moves_app/movies/domain/entities/recommendation.dart';
import 'package:moves_app/movies/domain/usecases/get_movie_recommendation_usecase.dart';

import '../../domain/entities/movie_details.dart';
import '../../domain/usecases/get_movie_detais_usecase.dart';

part 'movie_details_event.dart';

part 'movie_details_state.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  MovieDetailsBloc(
      this.getMovieDetailsUsecase, this.getMovieRecommendationUsecase)
      : super(const MovieDetailsState()) {
    on<GetMovieDetailsEvent>(_getMovieDetailsEvent);
    on<GetMovieDetailsRecommendationEvent>(_getMovieRecommendationEvent);
  }

  final GetMovieDetailsUsecase getMovieDetailsUsecase;
  final GetMovieRecommendationUsecase getMovieRecommendationUsecase;

  FutureOr<void> _getMovieDetailsEvent(
      GetMovieDetailsEvent event, Emitter<MovieDetailsState> emit) async {
    final result = await getMovieRecommendationUsecase
        .call(RecommendationParameter(event.id));

    result.fold(
        (l) => emit(state.copyWith(
            recommendationMessage: l.message,
            recommendationState: RequestState.error)),
        (r) => emit(state.copyWith(
              recommendationState: RequestState.loaded,
              recommendation: r,
            )));
  }

  FutureOr<void> _getMovieRecommendationEvent(
      GetMovieDetailsRecommendationEvent event,
      Emitter<MovieDetailsState> emit) async {
    final result =
        await getMovieDetailsUsecase.call(MovieDetailsParameters(event.id));

    result.fold(
        (l) => emit(state.copyWith(
            movieDetailsMessage: l.message,
            requestDetailsState: RequestState.error)),
        (r) => emit(state.copyWith(
              requestDetailsState: RequestState.loaded,
              movieDetails: r,
            )));
  }
}
