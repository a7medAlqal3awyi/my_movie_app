part of 'movie_details_bloc.dart';

class MovieDetailsState extends Equatable {
  const MovieDetailsState({
    this.recommendation = const [],
    this.recommendationState = RequestState.loading,
    this.recommendationMessage = '',
    this.movieDetails,
    this.requestDetailsState = RequestState.loaded,
    this.movieDetailsMessage = '',
  });

  final MovieDetails? movieDetails;
  final RequestState requestDetailsState;
  final String movieDetailsMessage;
  final List<Recommendation> recommendation;
  final RequestState recommendationState;
  final String recommendationMessage;

  MovieDetailsState copyWith(
      {MovieDetails? movieDetails,
      RequestState? requestDetailsState,
      String? movieDetailsMessage,
      List<Recommendation>? recommendation,
      RequestState? recommendationState,
      String? recommendationMessage,}) {
    return MovieDetailsState(
      movieDetails: movieDetails ?? this.movieDetails,
      requestDetailsState: requestDetailsState ?? this.requestDetailsState,
      movieDetailsMessage: movieDetailsMessage ?? this.movieDetailsMessage,
      recommendation: recommendation ?? this.recommendation,
      recommendationMessage: recommendationMessage ?? this.movieDetailsMessage,
      recommendationState: recommendationState ?? this.requestDetailsState,
    );
  }

  @override
  List<Object?> get props => [
        movieDetails,
        requestDetailsState,
        movieDetailsMessage,
        recommendation,
        recommendationState,
        recommendationMessage,
      ];
}
