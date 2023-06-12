import 'package:equatable/equatable.dart';
import 'package:moves_app/core/utils/enums.dart';

import '../../domain/entities/movie.dart';

class MovieStates extends Equatable {
  final List<Movie> newPlayingMove;
  final RequestState newPlayingState;
  final String newPlayingMessage;
  final List<Movie> popularMove;
  final RequestState popularState;
  final String popularMessage;
  final List<Movie> topRatedMove;
  final RequestState topRatedState;
  final String topRatedMessage;

  const MovieStates({
    this.newPlayingMove = const [],
    this.newPlayingState = RequestState.loading,
    this.newPlayingMessage = "",
    this.popularMove = const [],
    this.popularState = RequestState.loading,
    this.popularMessage = "",
    this.topRatedMove = const [],
    this.topRatedState = RequestState.loading,
    this.topRatedMessage = "",
  });

  MovieStates copyWith({
    List<Movie>? newPlayingMove,
    RequestState? newPlayingState,
    String? newPlayingMessage,
    List<Movie>? popularMove,
    RequestState? popularState,
    String? popularMessage,
    List<Movie>? topRatedMove,
    RequestState? topRatedState,
    String? topRatedMessage,
  }) {
    return MovieStates(
      newPlayingMessage: newPlayingMessage ?? this.newPlayingMessage,
      newPlayingState: newPlayingState ?? this.newPlayingState,
      popularMessage: popularMessage ?? this.popularMessage,
      newPlayingMove: newPlayingMove ?? this.newPlayingMove,
      popularState: popularState ?? this.popularState,
      popularMove: popularMove ?? this.popularMove,
      topRatedMessage: topRatedMessage ?? this.topRatedMessage,
      topRatedState: topRatedState ?? this.topRatedState,
      topRatedMove: topRatedMove ?? this.topRatedMove,
    );
  }

  @override
  List<Object> get props => [
        newPlayingMove,
        newPlayingState,
        newPlayingMessage,
        popularMessage,
        popularState,
        popularMove,
        topRatedMessage,
        topRatedState,
        topRatedMove,
      ];
}
