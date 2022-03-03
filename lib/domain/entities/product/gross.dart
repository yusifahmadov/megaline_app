import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';



@JsonSerializable()
class PriceGross extends Equatable {
  final String currency;
  final double amount;
  const PriceGross({
    required this.currency,
    required this.amount,
  });

  @override
  List<Object?> get props => throw UnimplementedError();
}
