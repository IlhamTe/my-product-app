part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.fetchAllProducts() = FetchAllProductsEvent;
  const factory HomeEvent.fetchAllCategories() = FetchAllCategoriesEvent;
  const factory HomeEvent.searchProduct({
    required String productName,
  }) = SearchProductEvent;
  const factory HomeEvent.filterProductsByCategory({
    required String category,
  }) = FilterProductsByCategoryEvent;
  const factory HomeEvent.logout() = LogoutEvent;
}
