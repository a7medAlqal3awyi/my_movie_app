import 'package:moves_app/movies/domain/entities/genres.dart';

class GenersModel extends Genres {
  const GenersModel({
    required super.id,
    required super.name,
  });

  @override
  List<Object> get props => [];

  factory GenersModel.fromJson(Map<String, dynamic> json) {
    return GenersModel(
      id:json['id'] ,
      name: json['name'],
    );
  }
}
