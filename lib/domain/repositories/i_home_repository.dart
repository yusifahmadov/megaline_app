import 'package:dartz/dartz.dart';
import '../../core/error/failures.dart';
import '../../data/models/product/product_edge_model.dart';
abstract class IProductRepository{
  Future<Either<Failure,List<ProductEdgeModel>>> getProducts();
}