import 'package:equatable/equatable.dart';

class ImageModel extends Equatable {
  final int id;
  final String title;
  final String description;
  final String imageUrl;
  final int width;
  final int height;

  const ImageModel({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.width,
    required this.height,
  });

  factory ImageModel.fromJson(Map<String, dynamic> json) {
    return ImageModel(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      width: json['width'] as int,
      height: json['height'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'imageUrl': imageUrl,
      'width': width,
      'height': height,
    };
  }

  @override
  List<Object?> get props => [id, title, description, imageUrl, width, height];
} 