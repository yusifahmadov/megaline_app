import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/error/failures.dart';
import '../../core/no_params.dart';
import '../../core/use_case/use_case.dart';
import '../../data/models/product/product_edge_model.dart';
import '../repositories/i_home_repository.dart';

@lazySingleton
class GetProductsUseCase extends UseCase<List<ProductEdgeModel>, NoParams> {
  GetProductsUseCase(this.repository);

  final IProductRepository repository;

  @override
  Future<Either<Failure, List<ProductEdgeModel>>> call(params) {
    return repository.getProducts();
  }
}
