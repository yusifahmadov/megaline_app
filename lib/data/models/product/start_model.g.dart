// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PriceStartModel _$PriceStartModelFromJson(Map<String, dynamic> json) =>
    PriceStartModel(
      currency: json['currency'] as String,
      gross: PriceGrossModel.fromJson(json['gross'] as Map<String, dynamic>),
      tax: PriceGrossModel.fromJson(json['tax'] as Map<String, dynamic>),
      net: PriceGrossModel.fromJson(json['net'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PriceStartModelToJson(PriceStartModel instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'gross': instance.gross,
      'tax': instance.tax,
      'net': instance.net,
    };
