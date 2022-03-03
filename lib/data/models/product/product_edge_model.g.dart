// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_edge_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductEdgeModel _$ProductEdgeModelFromJson(Map<String, dynamic> json) =>
    ProductEdgeModel(
      node: ProductNodeModel.fromJson(json['node'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductEdgeModelToJson(ProductEdgeModel instance) =>
    <String, dynamic>{
      'node': instance.node,
    };
