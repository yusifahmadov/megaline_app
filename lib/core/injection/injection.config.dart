// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:graphql_flutter/graphql_flutter.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i5;

import '../../data/data_sources/product_remote_data_source.dart' as _i4;
import '../../data/repositories/product_repository.dart' as _i10;
import '../../domain/repositories/i_home_repository.dart' as _i9;
import '../../domain/use_cases/get_products_usecase.dart' as _i11;
import '../../presentation/bloc/product/product_bloc.dart' as _i12;
import '../../presentation/bloc/product_detail/product_detail_bloc.dart' as _i7;
import '../../presentation/bloc/slider_indicator/slider_indicator_cubit.dart'
    as _i8;
import '../network/network_info.dart' as _i6;
import 'register_module.dart' as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.GraphQLClient>(() => registerModule.gqlClient);
  gh.lazySingleton<_i4.IProductRemoteDataSource>(
      () => _i4.ProductRemoteDataSource(get<_i3.GraphQLClient>()));
  gh.lazySingleton<_i5.InternetConnectionChecker>(
      () => registerModule.connectionChecker);
  gh.lazySingleton<_i6.NetworkInfo>(
      () => _i6.NetworkInfo(get<_i5.InternetConnectionChecker>()));
  gh.factory<_i7.ProductDetailBloc>(() => _i7.ProductDetailBloc());
  gh.factory<_i8.SliderIndicatorCubit>(() => _i8.SliderIndicatorCubit());
  gh.lazySingleton<_i9.IProductRepository>(() => _i10.ProductRepository(
      get<_i6.NetworkInfo>(), get<_i4.IProductRemoteDataSource>()));
  gh.lazySingleton<_i11.GetProductsUseCase>(
      () => _i11.GetProductsUseCase(get<_i9.IProductRepository>()));
  gh.factory<_i12.ProductBloc>(
      () => _i12.ProductBloc(get<_i11.GetProductsUseCase>()));
  return get;
}

class _$RegisterModule extends _i13.RegisterModule {}
