import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/product/category.dart';

part 'category_model.g.dart';

@JsonSerializable()
class CategoryModel extends Category{
  const CategoryModel({
     required String name
  }) : super(name: name);


  factory CategoryModel.fromJson(Map<String,dynamic> json) => _$CategoryModelFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
}
