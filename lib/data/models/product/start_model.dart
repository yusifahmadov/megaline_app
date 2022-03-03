

import 'package:freezed_annotation/freezed_annotation.dart';
import 'gross_model.dart';
import '../../../domain/entities/product/start.dart';



part 'start_model.g.dart';

@JsonSerializable()
class PriceStartModel extends PriceStart{
  const  PriceStartModel({
     required String currency,
    required PriceGrossModel gross,
   required PriceGrossModel tax,
   required PriceGrossModel net,
  }) : super(currency: currency,gross: gross,net: net,tax: tax);

  factory PriceStartModel.fromJson(Map<String,dynamic> json) => _$PriceStartModelFromJson(json);
      Map<String, dynamic> toJson() => _$PriceStartModelToJson(this);

}
