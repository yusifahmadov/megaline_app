// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_node_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductNodeModel _$ProductNodeModelFromJson(Map<String, dynamic> json) =>
    ProductNodeModel(
      name: json['name'] as String,
      category:
          CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
      media: (json['media'] as List<dynamic>)
          .map((e) => ThumbnailModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      thumbnail:
          ThumbnailModel.fromJson(json['thumbnail'] as Map<String, dynamic>),
      pricing: PricingModel.fromJson(json['pricing'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductNodeModelToJson(ProductNodeModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'category': instance.category,
      'media': instance.media,
      'thumbnail': instance.thumbnail,
      'pricing': instance.pricing,
    };
