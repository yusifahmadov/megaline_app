// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gross_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PriceGrossModel _$PriceGrossModelFromJson(Map<String, dynamic> json) =>
    PriceGrossModel(
      currency: json['currency'] as String,
      amount: (json['amount'] as num).toDouble(),
    );

Map<String, dynamic> _$PriceGrossModelToJson(PriceGrossModel instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'amount': instance.amount,
    };
