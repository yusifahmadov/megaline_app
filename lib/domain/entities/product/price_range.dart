import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../data/models/product/start_model.dart';






@JsonSerializable()

class PriceRange extends Equatable{
  final PriceStartModel start;
  const PriceRange({
    required this. start,
  });

  @override
  List<Object?> get props => [];
}