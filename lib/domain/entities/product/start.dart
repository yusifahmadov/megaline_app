import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../data/models/product/gross_model.dart';




@JsonSerializable()

class PriceStart extends Equatable{
  final String currency;
   final PriceGrossModel gross;
   final PriceGrossModel tax;
   final PriceGrossModel net;
  const PriceStart({
    required this. currency,
   required this. gross,
   required this. tax,
   required this. net,
  });

  @override
  List<Object?> get props => [];
}