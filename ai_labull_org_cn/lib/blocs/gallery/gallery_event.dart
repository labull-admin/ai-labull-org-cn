part of 'gallery_bloc.dart';

sealed class GalleryEvent extends Equatable {
  const GalleryEvent();

  @override
  List<Object> get props => [];
}

class LoadImages extends GalleryEvent {
  final User user;
  final int pageSize;

  const LoadImages({required this.user, required this.pageSize});

  @override
  List<Object> get props => [user, pageSize];
}
