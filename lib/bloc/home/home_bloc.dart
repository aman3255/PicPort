import 'package:flutter_bloc/flutter_bloc.dart';
import '../../repositories/image_repository.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final ImageRepository _imageRepository;

  HomeBloc(this._imageRepository) : super(HomeInitial()) {
    on<LoadImagesEvent>(_onLoadImagesEvent);
  }

  Future<void> _onLoadImagesEvent(LoadImagesEvent event, Emitter<HomeState> emit) async {
    emit(HomeLoading());

    try {
      final images = await _imageRepository.getImages();
      emit(HomeLoaded(images));
    } catch (e) {
      emit(HomeError('Failed to load images: ${e.toString()}'));
    }
  }
} 