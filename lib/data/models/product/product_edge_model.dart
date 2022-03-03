import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/product/product_edge.dart';
import 'product_node_model.dart';

part 'product_edge_model.g.dart';

@JsonSerializable()
class ProductEdgeModel extends ProductEdge{
  const  ProductEdgeModel({
  required ProductNodeModel node,
  }) : super(node: node);


factory ProductEdgeModel.fromJson(Map<String,dynamic> json) => _$ProductEdgeModelFromJson(json);
      Map<String, dynamic> toJson() => _$ProductEdgeModelToJson(this);

}

