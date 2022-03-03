// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pricing_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PricingModel _$PricingModelFromJson(Map<String, dynamic> json) => PricingModel(
      onSale: json['onSale'] as bool,
      priceRange:
          PriceRangeModel.fromJson(json['priceRange'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PricingModelToJson(PricingModel instance) =>
    <String, dynamic>{
      'onSale': instance.onSale,
      'priceRange': instance.priceRange,
    };
