import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:moves_app/core/error/failure.dart';
import 'package:moves_app/core/usecase/base_usecase.dart';
import 'package:moves_app/movies/domain/entities/recommendation.dart';
import 'package:moves_app/movies/domain/repository/base_movie_repository.dart';

class GetMovieRecommendationUsecase
    extends BaseUsecase<List<Recommendation>, RecommendationParameter> {
  final BaseMovieRepository baseMovieRepository;

  GetMovieRecommendationUsecase(this.baseMovieRepository);

  @override
  Future<Either<Failure, List<Recommendation>>> call(
      RecommendationParameter parameters) async {
    return await baseMovieRepository.getRecommendation(parameters);
  }
}

class RecommendationParameter extends Equatable {
  final int id;

  const RecommendationParameter(this.id);

  @override
  List<Object> get props => [id];
}
