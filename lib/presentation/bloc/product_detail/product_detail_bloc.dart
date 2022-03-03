import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../core/data_states/data_state.dart';
import '../../../data/models/product/product_edge_model.dart';
import 'product_event.dart';
@injectable
class ProductDetailBloc extends Bloc<ProductDetailEvent, DataState<ProductEdgeModel>> {
  ProductDetailBloc() : super(DataState.initial()) {
    on<ProductDetailPageStarted>((event, emit) {
      emit(DataState.inProgress());

      emit(DataState.success(event.data));

    });
  }
}