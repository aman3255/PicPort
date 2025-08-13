import '../models/image_model.dart';

class ImageRepository {
  Future<List<ImageModel>> getImages() async {
    // Simulate API delay
    await Future.delayed(const Duration(seconds: 1));
    
    const String imageUrl = "https://fastly.picsum.photos/id/1050/536/354.jpg?hmac=fjxUSeQRIROZvo_be9xEf-vMhMutXf2F5yw-WaWyaWA";
    
    return List.generate(10, (index) {
      return ImageModel(
        id: index + 1,
        title: "Beautiful Landscape ${index + 1}",
        description: "This is a stunning landscape image showcasing the natural beauty of our world. The composition captures the essence of tranquility and wonder that nature provides.",
        imageUrl: imageUrl,
        width: 536,
        height: 354,
      );
    });
  }
} 