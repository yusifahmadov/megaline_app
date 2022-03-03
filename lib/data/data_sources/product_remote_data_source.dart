import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/exceptions.dart' as excptn;
import '../../core/util/gql_query.dart';
import '../models/product/product_edge_model.dart';
abstract class IProductRemoteDataSource{
  Future<List<ProductEdgeModel>> getProducts();
}

@LazySingleton(as: IProductRemoteDataSource)
class ProductRemoteDataSource extends IProductRemoteDataSource{
  ProductRemoteDataSource(this._client);
  final GraphQLClient _client;

  @override
  Future<List<ProductEdgeModel>> getProducts()async{
    try {
      final result = await _client.query(QueryOptions(document: gql(GqlQuery.productQuery)));
      if(result.data == null){
        return [];
      }
      
      return result.data?['products']['edges']
          .map((e) => ProductEdgeModel.fromJson(e))
          .cast<ProductEdgeModel>()
          .toList();


    } on Exception {
      throw excptn.ServerException;
    }
  }

  
}