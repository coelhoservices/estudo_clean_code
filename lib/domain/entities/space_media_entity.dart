// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class SpaceMediaEntity extends Equatable {
  final String description;
  final String mediaTypes;
  final String title;
  final String mediaUrl;

  const SpaceMediaEntity({
    required this.description,
    required this.mediaTypes,
    required this.title,
    required this.mediaUrl,
  });

  @override
  List<Object?> get props => [
        description,
        mediaTypes,
        title,
        mediaUrl,
      ];
}
