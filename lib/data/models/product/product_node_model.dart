import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/product/product_node.dart';
import 'category_model.dart';
import 'pricing_model.dart';
import 'thumbnail_model.dart';

part 'product_node_model.g.dart';

@JsonSerializable()
class ProductNodeModel extends ProductNode{
  const  ProductNodeModel({
    required String name,
    required CategoryModel category,
    required List<ThumbnailModel> media,
    required ThumbnailModel thumbnail,
    required PricingModel pricing,
  }):super(media: media,name: name,pricing: pricing,thumbnail: thumbnail,category: category) ;

  factory ProductNodeModel.fromJson(Map<String,dynamic> json) => _$ProductNodeModelFromJson(json);
      Map<String, dynamic> toJson() => _$ProductNodeModelToJson(this);

}
