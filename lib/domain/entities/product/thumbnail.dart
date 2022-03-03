import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';



@JsonSerializable()

class Thumbnail extends Equatable{
  final String url;
  const  Thumbnail({
    required this.url,
  }
  );

  @override
  List<Object?> get props => [];
}