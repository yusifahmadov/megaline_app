import 'package:equatable/equatable.dart';
import '../../../data/models/product/product_edge_model.dart';

class ProductDetailEvent extends Equatable {
  const ProductDetailEvent();

  

  @override
  List<Object> get props => [];
}

class ProductDetailPageStarted extends ProductDetailEvent{
  final ProductEdgeModel data;
  const ProductDetailPageStarted({required this.data});
}