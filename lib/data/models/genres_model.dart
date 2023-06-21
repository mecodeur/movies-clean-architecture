import 'package:movies_clean_architecture_test/domain/entities/genres_entity.dart';

class GenresModel extends GenresEntity {
  const GenresModel({required super.id, required super.name});

  factory GenresModel.froJson(Map<String, dynamic> jsonData) {
    return GenresModel(
      id: jsonData['id'],
      name: jsonData['name'],
    );
  }
}
