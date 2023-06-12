import 'package:moves_app/movies/domain/entities/recommendation.dart';

class RecommendationModel extends Recommendation {
  const RecommendationModel({
      super.backdropPath,
    required super.id,
  });

  factory RecommendationModel.fromJson(Map<String, dynamic> json) {
    return RecommendationModel(
      backdropPath: json['backdrop_path']?? "/hh28CTWLdxTXA5yJgefZ6gUnFDo.jpg",
      id: json['id'],
    );
  }
}
