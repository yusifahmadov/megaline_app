import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/product/product_node_model.dart';



@JsonSerializable()

class ProductEdge extends Equatable{
  final ProductNodeModel node;
  const ProductEdge({
    required this. node,
  });

  @override
  List<Object?> get props => [];
}