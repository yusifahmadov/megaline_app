import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/product/price_range.dart';
import 'start_model.dart';

part 'price_range_model.g.dart';

@JsonSerializable()
class PriceRangeModel extends PriceRange{
  const  PriceRangeModel({
    required PriceStartModel start,
  }) :super(start: start);


  factory PriceRangeModel.fromJson(Map<String,dynamic> json) => _$PriceRangeModelFromJson(json);
      Map<String, dynamic> toJson() => _$PriceRangeModelToJson(this);

}
