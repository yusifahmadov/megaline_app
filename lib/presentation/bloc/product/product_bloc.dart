import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../core/no_params.dart';
import '../../../data/models/product/product_edge_model.dart';

import '../../../core/data_states/data_state.dart';
import '../../../domain/use_cases/get_products_usecase.dart';
import 'product_event.dart';

@injectable
class ProductBloc
    extends Bloc<ProductEvent, DataState<List<ProductEdgeModel>>> {
  final GetProductsUseCase _getProductsUseCase;

  ProductBloc(this._getProductsUseCase) : super(DataState.initial()) {
    on<ProductPageStarted>((event, emit) async{
      emit(DataState.inProgress());
      final either = await _getProductsUseCase(const NoParams());
      either.fold((l) => emit(DataState.failure()),
          (r) => emit(DataState.success(r)));
      
    });
  }
  // Exception _getFailureAndThrowExpection(Failure l) {
  //   if (l is ServerFailure) {
  //     return ServerException();
  //   } else if (l is CacheFailure) {
  //     return CacheException();
  //   } else {
  //     return UnknownException();
  //   }
  // }
}
