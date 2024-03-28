import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_product_app/core/constants/storage_constant.dart';
import 'package:my_product_app/core/dependency_injection/dependency_injection.dart';
import 'package:my_product_app/core/helpers/navigation_helper.dart';
import 'package:my_product_app/core/route/route_name.dart';
import 'package:my_product_app/core/use_case/use_case.dart';
import 'package:my_product_app/features/home/domain/entities/product_entity.dart';
import 'package:my_product_app/features/home/domain/use_cases/fetch_all_categories_use_case.dart';
import 'package:my_product_app/features/home/domain/use_cases/fetch_all_products_use_case.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this._fetchAllProductsUseCase, this._fetchAllCategoriesUseCase)
      : super(const HomeState()) {
    on<FetchAllProductsEvent>(_onFetchAllProducts);
    on<FetchAllCategoriesEvent>(_onFetchAllCategories);
    on<SearchProductEvent>(_onSearchProduct);
    on<FilterProductsByCategoryEvent>(_onFilterProductsByCategory);
    on<LogoutEvent>(_onLogout);
  }
  final FetchAllProductsUseCase _fetchAllProductsUseCase;
  final FetchAllCategoriesUseCase _fetchAllCategoriesUseCase;

  Future<void> _onFetchAllProducts(FetchAllProductsEvent event, emit) async {
    emit(state.copyWith(status: HomeStateStatus.loading));
    String? username =
        getIt<SharedPreferences>().getString(StorageConstant.usernameKey);

    add(const FetchAllCategoriesEvent());

    final fetchProductsResult = await _fetchAllProductsUseCase.call(NoParams());

    fetchProductsResult.fold(
      (failures) => emit(
        state.copyWith(
          status: HomeStateStatus.failed,
          message: failures.errorMessage,
        ),
      ),
      (products) => emit(
        state.copyWith(
          status: HomeStateStatus.success,
          defaultProducts: products,
          filteredProducts: products,
          username: username ?? '-',
        ),
      ),
    );
  }

  Future<void> _onFetchAllCategories(
      FetchAllCategoriesEvent event, emit) async {
    final fetchCategoriesResult =
        await _fetchAllCategoriesUseCase.call(NoParams());

    fetchCategoriesResult.fold(
      (failures) => emit(
        state.copyWith(
          message: failures.errorMessage,
        ),
      ),
      (categories) => emit(
        state.copyWith(
          categories: ['All', ...categories],
        ),
      ),
    );
  }

  void _onSearchProduct(SearchProductEvent event, emit) {
    final defaultProducts = state.defaultProducts;

    List<ProductEntity> filteredProducts = [];

    if (event.productName.isNotEmpty) {
      filteredProducts = defaultProducts
          .where((element) => element.title
              .toLowerCase()
              .contains(event.productName.toLowerCase()))
          .toList();

      emit(state.copyWith(filteredProducts: filteredProducts));
    } else {
      emit(state.copyWith(filteredProducts: defaultProducts));
    }
  }

  void _onFilterProductsByCategory(FilterProductsByCategoryEvent event, emit) {
    List<ProductEntity> defaultProducts = List.from(state.defaultProducts);

    if (event.category.toLowerCase() == 'all') {
      emit(state.copyWith(filteredProducts: defaultProducts));
    } else {
      final filteredProducts = defaultProducts
          .where((element) =>
              element.category.toLowerCase() == event.category.toLowerCase())
          .toList();

      emit(state.copyWith(filteredProducts: filteredProducts));
    }
  }

  Future<void> _onLogout(LogoutEvent event, emit) async {
    await getIt<SharedPreferences>().clear();
    navigate.pushToReplacement(RouteName.login);
  }
}
