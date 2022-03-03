
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';




@JsonSerializable()
class Category extends Equatable{
  final String name;
  const  Category({
    required  this.name,
  });

  @override
  List<Object?> get props => [];
}