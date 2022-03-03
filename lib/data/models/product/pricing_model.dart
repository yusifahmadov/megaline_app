import 'package:freezed_annotation/freezed_annotation.dart';
import 'price_range_model.dart';
import '../../../domain/entities/product/pricing.dart';



part 'pricing_model.g.dart';

@JsonSerializable()
class PricingModel extends Pricing{
  const PricingModel({
   required bool onSale,
  required PriceRangeModel priceRange,
  }): super(priceRange: priceRange,onSale: onSale);


  factory PricingModel.fromJson(Map<String,dynamic> json) => _$PricingModelFromJson(json);
      Map<String, dynamic> toJson() => _$PricingModelToJson(this);

}

