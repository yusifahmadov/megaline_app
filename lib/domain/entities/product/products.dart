import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/product/product_edge_model.dart';



@JsonSerializable()

class Products extends Equatable{
  final List<ProductEdgeModel> edges;
  const Products({
    required this.edges
  });

  @override
  List<Object?> get props => [];
}