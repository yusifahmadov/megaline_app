import 'package:freezed_annotation/freezed_annotation.dart';
import 'product_edge_model.dart';
import '../../../domain/entities/product/products.dart';




part 'products_model.g.dart';

@JsonSerializable()
class ProductsModel extends Products{
  
  const ProductsModel({
   required List<ProductEdgeModel> edges
  }) : super(edges: edges);


  factory ProductsModel.fromJson(Map<String,dynamic> json) => _$ProductsModelFromJson(json);
  Map<String, dynamic> toJson() => _$ProductsModelToJson(this);

}

