import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/product/price_range_model.dart';




@JsonSerializable()

class Pricing extends Equatable{
  final bool onSale;
   final PriceRangeModel priceRange;
  const Pricing({
   required this. onSale,
   required this. priceRange,
  });

  @override
  List<Object?> get props => [];
}