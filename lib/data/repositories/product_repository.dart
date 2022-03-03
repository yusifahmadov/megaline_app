import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/error/exceptions.dart';
import '../../core/error/failures.dart';
import '../../core/network/network_info.dart';
import '../../domain/repositories/i_home_repository.dart';
import '../data_sources/product_remote_data_source.dart';
import '../models/product/product_edge_model.dart';


@LazySingleton(as: IProductRepository)
class ProductRepository implements IProductRepository{
  ProductRepository(this._networkInfo,this._iProductRemoteDataSource);
  final NetworkInfo _networkInfo;
  final IProductRemoteDataSource _iProductRemoteDataSource;
  @override
  Future<Either<Failure, List<ProductEdgeModel>>> getProducts() async{
    if(await _networkInfo.isConnected){
      try {
        final models = await _iProductRemoteDataSource.getProducts();
      return Right(models);
      } on ServerException{
        return Left(ServerFailure());
      }
    }else{
      return Left(ServerFailure());
    }
  }

}