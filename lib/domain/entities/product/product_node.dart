import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/product/category_model.dart';
import '../../../data/models/product/pricing_model.dart';
import '../../../data/models/product/thumbnail_model.dart';




@JsonSerializable()

class ProductNode extends Equatable{
   final String name;
   final CategoryModel category;
    final List<ThumbnailModel> media;
    final ThumbnailModel thumbnail;
    final PricingModel pricing;
  const  ProductNode({
    required this. name,
    required this.media,
    required this.category,
    required this. thumbnail,
    required this. pricing,
  });

  @override
  List<Object?> get props => [];
}