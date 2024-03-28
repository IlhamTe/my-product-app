// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:my_product_app/core/helpers/dio_helper.dart' as _i9;
import 'package:my_product_app/core/modules/network_module.dart' as _i26;
import 'package:my_product_app/core/modules/storage_module.dart' as _i27;
import 'package:my_product_app/features/authentication/data/data_sources/remote/authentication_remote_data_source.dart'
    as _i17;
import 'package:my_product_app/features/authentication/data/repositories/authentication_repository_impl.dart'
    as _i19;
import 'package:my_product_app/features/authentication/domain/repositories/authentication_repository.dart'
    as _i18;
import 'package:my_product_app/features/authentication/domain/use_cases/login_use_case.dart'
    as _i24;
import 'package:my_product_app/features/authentication/presentation/bloc/authentication_bloc.dart'
    as _i25;
import 'package:my_product_app/features/cart/data/data_sources/local/cart_local_data_source.dart'
    as _i3;
import 'package:my_product_app/features/cart/data/repositories/cart_repository_impl.dart'
    as _i5;
import 'package:my_product_app/features/cart/domain/repositories/cart_repository.dart'
    as _i4;
import 'package:my_product_app/features/cart/domain/use_cases/add_cart_use_case.dart'
    as _i16;
import 'package:my_product_app/features/cart/domain/use_cases/delete_all_carts_use_case.dart'
    as _i6;
import 'package:my_product_app/features/cart/domain/use_cases/delete_cart_use_case.dart'
    as _i7;
import 'package:my_product_app/features/cart/domain/use_cases/get_all_carts_use_case.dart'
    as _i10;
import 'package:my_product_app/features/cart/domain/use_cases/update_product_quantity_use_case.dart'
    as _i15;
import 'package:my_product_app/features/cart/presentation/bloc/cart_bloc.dart'
    as _i20;
import 'package:my_product_app/features/home/data/data_sources/remote/home_remote_data_source.dart'
    as _i11;
import 'package:my_product_app/features/home/data/repositories/home_repository_impl.dart'
    as _i13;
import 'package:my_product_app/features/home/domain/repositories/home_repository.dart'
    as _i12;
import 'package:my_product_app/features/home/domain/use_cases/fetch_all_categories_use_case.dart'
    as _i21;
import 'package:my_product_app/features/home/domain/use_cases/fetch_all_products_use_case.dart'
    as _i22;
import 'package:my_product_app/features/home/presentation/bloc/home_bloc.dart'
    as _i23;
import 'package:shared_preferences/shared_preferences.dart' as _i14;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final networkModule = _$NetworkModule();
    final storageModule = _$StorageModule();
    gh.lazySingleton<_i3.CartLocalDataSource>(
        () => _i3.CartLocalDataSourceImpl());
    gh.lazySingleton<_i4.CartRepository>(
        () => _i5.CartRepositoryImpl(gh<_i3.CartLocalDataSource>()));
    gh.lazySingleton<_i6.DeleteAllCartsUseCase>(
        () => _i6.DeleteAllCartsUseCase(gh<_i4.CartRepository>()));
    gh.lazySingleton<_i7.DeleteCartUseCase>(
        () => _i7.DeleteCartUseCase(gh<_i4.CartRepository>()));
    gh.lazySingleton<_i8.Dio>(() => networkModule.dio);
    gh.lazySingleton<_i9.DioHelper>(() => _i9.DioHelper());
    gh.lazySingleton<_i10.GetAllCartsUseCase>(
        () => _i10.GetAllCartsUseCase(gh<_i4.CartRepository>()));
    gh.lazySingleton<_i11.HomeRemoteDataSource>(
        () => _i11.HomeRemoteDataSourceImpl(gh<_i8.Dio>()));
    gh.lazySingleton<_i12.HomeRepository>(
        () => _i13.HomeRepositoryImpl(gh<_i11.HomeRemoteDataSource>()));
    await gh.lazySingletonAsync<_i14.SharedPreferences>(
      () => storageModule.sharedPreference,
      preResolve: true,
    );
    gh.lazySingleton<_i15.UpdateProductQuantityUseCase>(
        () => _i15.UpdateProductQuantityUseCase(gh<_i4.CartRepository>()));
    gh.lazySingleton<_i16.AddCartUseCase>(
        () => _i16.AddCartUseCase(gh<_i4.CartRepository>()));
    gh.lazySingleton<_i17.AuthenticationRemoteDataSource>(
        () => _i17.AuthenticationRemoteDataSourceImpl(gh<_i8.Dio>()));
    gh.lazySingleton<_i18.AuthenticationRepository>(() =>
        _i19.AuthenticationRepositoryImpl(
            gh<_i17.AuthenticationRemoteDataSource>()));
    gh.factory<_i20.CartBloc>(() => _i20.CartBloc(
          gh<_i10.GetAllCartsUseCase>(),
          gh<_i16.AddCartUseCase>(),
          gh<_i15.UpdateProductQuantityUseCase>(),
          gh<_i7.DeleteCartUseCase>(),
          gh<_i6.DeleteAllCartsUseCase>(),
        ));
    gh.lazySingleton<_i21.FetchAllCategoriesUseCase>(
        () => _i21.FetchAllCategoriesUseCase(gh<_i12.HomeRepository>()));
    gh.lazySingleton<_i22.FetchAllProductsUseCase>(
        () => _i22.FetchAllProductsUseCase(gh<_i12.HomeRepository>()));
    gh.factory<_i23.HomeBloc>(() => _i23.HomeBloc(
          gh<_i22.FetchAllProductsUseCase>(),
          gh<_i21.FetchAllCategoriesUseCase>(),
        ));
    gh.factory<_i24.LoginUseCase>(
        () => _i24.LoginUseCase(gh<_i18.AuthenticationRepository>()));
    gh.factory<_i25.AuthenticationBloc>(
        () => _i25.AuthenticationBloc(gh<_i24.LoginUseCase>()));
    return this;
  }
}

class _$NetworkModule extends _i26.NetworkModule {}

class _$StorageModule extends _i27.StorageModule {}
