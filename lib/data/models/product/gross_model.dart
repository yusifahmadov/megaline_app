import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/product/gross.dart';

part 'gross_model.g.dart';

@JsonSerializable()
class PriceGrossModel extends PriceGross{
  const PriceGrossModel({
     required String currency,
    required double amount,
  }) : super(amount: amount, currency: currency);


  factory PriceGrossModel.fromJson(Map<String,dynamic> json) => _$PriceGrossModelFromJson(json);
  Map<String, dynamic> toJson() => _$PriceGrossModelToJson(this);
}
