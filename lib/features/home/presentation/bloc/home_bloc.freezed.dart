// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllProducts,
    required TResult Function() fetchAllCategories,
    required TResult Function(String productName) searchProduct,
    required TResult Function(String category) filterProductsByCategory,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllProducts,
    TResult? Function()? fetchAllCategories,
    TResult? Function(String productName)? searchProduct,
    TResult? Function(String category)? filterProductsByCategory,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllProducts,
    TResult Function()? fetchAllCategories,
    TResult Function(String productName)? searchProduct,
    TResult Function(String category)? filterProductsByCategory,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAllProductsEvent value) fetchAllProducts,
    required TResult Function(FetchAllCategoriesEvent value) fetchAllCategories,
    required TResult Function(SearchProductEvent value) searchProduct,
    required TResult Function(FilterProductsByCategoryEvent value)
        filterProductsByCategory,
    required TResult Function(LogoutEvent value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAllProductsEvent value)? fetchAllProducts,
    TResult? Function(FetchAllCategoriesEvent value)? fetchAllCategories,
    TResult? Function(SearchProductEvent value)? searchProduct,
    TResult? Function(FilterProductsByCategoryEvent value)?
        filterProductsByCategory,
    TResult? Function(LogoutEvent value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAllProductsEvent value)? fetchAllProducts,
    TResult Function(FetchAllCategoriesEvent value)? fetchAllCategories,
    TResult Function(SearchProductEvent value)? searchProduct,
    TResult Function(FilterProductsByCategoryEvent value)?
        filterProductsByCategory,
    TResult Function(LogoutEvent value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchAllProductsEventImplCopyWith<$Res> {
  factory _$$FetchAllProductsEventImplCopyWith(
          _$FetchAllProductsEventImpl value,
          $Res Function(_$FetchAllProductsEventImpl) then) =
      __$$FetchAllProductsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchAllProductsEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$FetchAllProductsEventImpl>
    implements _$$FetchAllProductsEventImplCopyWith<$Res> {
  __$$FetchAllProductsEventImplCopyWithImpl(_$FetchAllProductsEventImpl _value,
      $Res Function(_$FetchAllProductsEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchAllProductsEventImpl implements FetchAllProductsEvent {
  const _$FetchAllProductsEventImpl();

  @override
  String toString() {
    return 'HomeEvent.fetchAllProducts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAllProductsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllProducts,
    required TResult Function() fetchAllCategories,
    required TResult Function(String productName) searchProduct,
    required TResult Function(String category) filterProductsByCategory,
    required TResult Function() logout,
  }) {
    return fetchAllProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllProducts,
    TResult? Function()? fetchAllCategories,
    TResult? Function(String productName)? searchProduct,
    TResult? Function(String category)? filterProductsByCategory,
    TResult? Function()? logout,
  }) {
    return fetchAllProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllProducts,
    TResult Function()? fetchAllCategories,
    TResult Function(String productName)? searchProduct,
    TResult Function(String category)? filterProductsByCategory,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (fetchAllProducts != null) {
      return fetchAllProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAllProductsEvent value) fetchAllProducts,
    required TResult Function(FetchAllCategoriesEvent value) fetchAllCategories,
    required TResult Function(SearchProductEvent value) searchProduct,
    required TResult Function(FilterProductsByCategoryEvent value)
        filterProductsByCategory,
    required TResult Function(LogoutEvent value) logout,
  }) {
    return fetchAllProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAllProductsEvent value)? fetchAllProducts,
    TResult? Function(FetchAllCategoriesEvent value)? fetchAllCategories,
    TResult? Function(SearchProductEvent value)? searchProduct,
    TResult? Function(FilterProductsByCategoryEvent value)?
        filterProductsByCategory,
    TResult? Function(LogoutEvent value)? logout,
  }) {
    return fetchAllProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAllProductsEvent value)? fetchAllProducts,
    TResult Function(FetchAllCategoriesEvent value)? fetchAllCategories,
    TResult Function(SearchProductEvent value)? searchProduct,
    TResult Function(FilterProductsByCategoryEvent value)?
        filterProductsByCategory,
    TResult Function(LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (fetchAllProducts != null) {
      return fetchAllProducts(this);
    }
    return orElse();
  }
}

abstract class FetchAllProductsEvent implements HomeEvent {
  const factory FetchAllProductsEvent() = _$FetchAllProductsEventImpl;
}

/// @nodoc
abstract class _$$FetchAllCategoriesEventImplCopyWith<$Res> {
  factory _$$FetchAllCategoriesEventImplCopyWith(
          _$FetchAllCategoriesEventImpl value,
          $Res Function(_$FetchAllCategoriesEventImpl) then) =
      __$$FetchAllCategoriesEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchAllCategoriesEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$FetchAllCategoriesEventImpl>
    implements _$$FetchAllCategoriesEventImplCopyWith<$Res> {
  __$$FetchAllCategoriesEventImplCopyWithImpl(
      _$FetchAllCategoriesEventImpl _value,
      $Res Function(_$FetchAllCategoriesEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchAllCategoriesEventImpl implements FetchAllCategoriesEvent {
  const _$FetchAllCategoriesEventImpl();

  @override
  String toString() {
    return 'HomeEvent.fetchAllCategories()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAllCategoriesEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllProducts,
    required TResult Function() fetchAllCategories,
    required TResult Function(String productName) searchProduct,
    required TResult Function(String category) filterProductsByCategory,
    required TResult Function() logout,
  }) {
    return fetchAllCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllProducts,
    TResult? Function()? fetchAllCategories,
    TResult? Function(String productName)? searchProduct,
    TResult? Function(String category)? filterProductsByCategory,
    TResult? Function()? logout,
  }) {
    return fetchAllCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllProducts,
    TResult Function()? fetchAllCategories,
    TResult Function(String productName)? searchProduct,
    TResult Function(String category)? filterProductsByCategory,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (fetchAllCategories != null) {
      return fetchAllCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAllProductsEvent value) fetchAllProducts,
    required TResult Function(FetchAllCategoriesEvent value) fetchAllCategories,
    required TResult Function(SearchProductEvent value) searchProduct,
    required TResult Function(FilterProductsByCategoryEvent value)
        filterProductsByCategory,
    required TResult Function(LogoutEvent value) logout,
  }) {
    return fetchAllCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAllProductsEvent value)? fetchAllProducts,
    TResult? Function(FetchAllCategoriesEvent value)? fetchAllCategories,
    TResult? Function(SearchProductEvent value)? searchProduct,
    TResult? Function(FilterProductsByCategoryEvent value)?
        filterProductsByCategory,
    TResult? Function(LogoutEvent value)? logout,
  }) {
    return fetchAllCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAllProductsEvent value)? fetchAllProducts,
    TResult Function(FetchAllCategoriesEvent value)? fetchAllCategories,
    TResult Function(SearchProductEvent value)? searchProduct,
    TResult Function(FilterProductsByCategoryEvent value)?
        filterProductsByCategory,
    TResult Function(LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (fetchAllCategories != null) {
      return fetchAllCategories(this);
    }
    return orElse();
  }
}

abstract class FetchAllCategoriesEvent implements HomeEvent {
  const factory FetchAllCategoriesEvent() = _$FetchAllCategoriesEventImpl;
}

/// @nodoc
abstract class _$$SearchProductEventImplCopyWith<$Res> {
  factory _$$SearchProductEventImplCopyWith(_$SearchProductEventImpl value,
          $Res Function(_$SearchProductEventImpl) then) =
      __$$SearchProductEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String productName});
}

/// @nodoc
class __$$SearchProductEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SearchProductEventImpl>
    implements _$$SearchProductEventImplCopyWith<$Res> {
  __$$SearchProductEventImplCopyWithImpl(_$SearchProductEventImpl _value,
      $Res Function(_$SearchProductEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productName = null,
  }) {
    return _then(_$SearchProductEventImpl(
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchProductEventImpl implements SearchProductEvent {
  const _$SearchProductEventImpl({required this.productName});

  @override
  final String productName;

  @override
  String toString() {
    return 'HomeEvent.searchProduct(productName: $productName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchProductEventImpl &&
            (identical(other.productName, productName) ||
                other.productName == productName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchProductEventImplCopyWith<_$SearchProductEventImpl> get copyWith =>
      __$$SearchProductEventImplCopyWithImpl<_$SearchProductEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllProducts,
    required TResult Function() fetchAllCategories,
    required TResult Function(String productName) searchProduct,
    required TResult Function(String category) filterProductsByCategory,
    required TResult Function() logout,
  }) {
    return searchProduct(productName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllProducts,
    TResult? Function()? fetchAllCategories,
    TResult? Function(String productName)? searchProduct,
    TResult? Function(String category)? filterProductsByCategory,
    TResult? Function()? logout,
  }) {
    return searchProduct?.call(productName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllProducts,
    TResult Function()? fetchAllCategories,
    TResult Function(String productName)? searchProduct,
    TResult Function(String category)? filterProductsByCategory,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (searchProduct != null) {
      return searchProduct(productName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAllProductsEvent value) fetchAllProducts,
    required TResult Function(FetchAllCategoriesEvent value) fetchAllCategories,
    required TResult Function(SearchProductEvent value) searchProduct,
    required TResult Function(FilterProductsByCategoryEvent value)
        filterProductsByCategory,
    required TResult Function(LogoutEvent value) logout,
  }) {
    return searchProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAllProductsEvent value)? fetchAllProducts,
    TResult? Function(FetchAllCategoriesEvent value)? fetchAllCategories,
    TResult? Function(SearchProductEvent value)? searchProduct,
    TResult? Function(FilterProductsByCategoryEvent value)?
        filterProductsByCategory,
    TResult? Function(LogoutEvent value)? logout,
  }) {
    return searchProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAllProductsEvent value)? fetchAllProducts,
    TResult Function(FetchAllCategoriesEvent value)? fetchAllCategories,
    TResult Function(SearchProductEvent value)? searchProduct,
    TResult Function(FilterProductsByCategoryEvent value)?
        filterProductsByCategory,
    TResult Function(LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (searchProduct != null) {
      return searchProduct(this);
    }
    return orElse();
  }
}

abstract class SearchProductEvent implements HomeEvent {
  const factory SearchProductEvent({required final String productName}) =
      _$SearchProductEventImpl;

  String get productName;
  @JsonKey(ignore: true)
  _$$SearchProductEventImplCopyWith<_$SearchProductEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterProductsByCategoryEventImplCopyWith<$Res> {
  factory _$$FilterProductsByCategoryEventImplCopyWith(
          _$FilterProductsByCategoryEventImpl value,
          $Res Function(_$FilterProductsByCategoryEventImpl) then) =
      __$$FilterProductsByCategoryEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String category});
}

/// @nodoc
class __$$FilterProductsByCategoryEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$FilterProductsByCategoryEventImpl>
    implements _$$FilterProductsByCategoryEventImplCopyWith<$Res> {
  __$$FilterProductsByCategoryEventImplCopyWithImpl(
      _$FilterProductsByCategoryEventImpl _value,
      $Res Function(_$FilterProductsByCategoryEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$FilterProductsByCategoryEventImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FilterProductsByCategoryEventImpl
    implements FilterProductsByCategoryEvent {
  const _$FilterProductsByCategoryEventImpl({required this.category});

  @override
  final String category;

  @override
  String toString() {
    return 'HomeEvent.filterProductsByCategory(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterProductsByCategoryEventImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterProductsByCategoryEventImplCopyWith<
          _$FilterProductsByCategoryEventImpl>
      get copyWith => __$$FilterProductsByCategoryEventImplCopyWithImpl<
          _$FilterProductsByCategoryEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllProducts,
    required TResult Function() fetchAllCategories,
    required TResult Function(String productName) searchProduct,
    required TResult Function(String category) filterProductsByCategory,
    required TResult Function() logout,
  }) {
    return filterProductsByCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllProducts,
    TResult? Function()? fetchAllCategories,
    TResult? Function(String productName)? searchProduct,
    TResult? Function(String category)? filterProductsByCategory,
    TResult? Function()? logout,
  }) {
    return filterProductsByCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllProducts,
    TResult Function()? fetchAllCategories,
    TResult Function(String productName)? searchProduct,
    TResult Function(String category)? filterProductsByCategory,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (filterProductsByCategory != null) {
      return filterProductsByCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAllProductsEvent value) fetchAllProducts,
    required TResult Function(FetchAllCategoriesEvent value) fetchAllCategories,
    required TResult Function(SearchProductEvent value) searchProduct,
    required TResult Function(FilterProductsByCategoryEvent value)
        filterProductsByCategory,
    required TResult Function(LogoutEvent value) logout,
  }) {
    return filterProductsByCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAllProductsEvent value)? fetchAllProducts,
    TResult? Function(FetchAllCategoriesEvent value)? fetchAllCategories,
    TResult? Function(SearchProductEvent value)? searchProduct,
    TResult? Function(FilterProductsByCategoryEvent value)?
        filterProductsByCategory,
    TResult? Function(LogoutEvent value)? logout,
  }) {
    return filterProductsByCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAllProductsEvent value)? fetchAllProducts,
    TResult Function(FetchAllCategoriesEvent value)? fetchAllCategories,
    TResult Function(SearchProductEvent value)? searchProduct,
    TResult Function(FilterProductsByCategoryEvent value)?
        filterProductsByCategory,
    TResult Function(LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (filterProductsByCategory != null) {
      return filterProductsByCategory(this);
    }
    return orElse();
  }
}

abstract class FilterProductsByCategoryEvent implements HomeEvent {
  const factory FilterProductsByCategoryEvent(
      {required final String category}) = _$FilterProductsByCategoryEventImpl;

  String get category;
  @JsonKey(ignore: true)
  _$$FilterProductsByCategoryEventImplCopyWith<
          _$FilterProductsByCategoryEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutEventImplCopyWith<$Res> {
  factory _$$LogoutEventImplCopyWith(
          _$LogoutEventImpl value, $Res Function(_$LogoutEventImpl) then) =
      __$$LogoutEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$LogoutEventImpl>
    implements _$$LogoutEventImplCopyWith<$Res> {
  __$$LogoutEventImplCopyWithImpl(
      _$LogoutEventImpl _value, $Res Function(_$LogoutEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutEventImpl implements LogoutEvent {
  const _$LogoutEventImpl();

  @override
  String toString() {
    return 'HomeEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllProducts,
    required TResult Function() fetchAllCategories,
    required TResult Function(String productName) searchProduct,
    required TResult Function(String category) filterProductsByCategory,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllProducts,
    TResult? Function()? fetchAllCategories,
    TResult? Function(String productName)? searchProduct,
    TResult? Function(String category)? filterProductsByCategory,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllProducts,
    TResult Function()? fetchAllCategories,
    TResult Function(String productName)? searchProduct,
    TResult Function(String category)? filterProductsByCategory,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAllProductsEvent value) fetchAllProducts,
    required TResult Function(FetchAllCategoriesEvent value) fetchAllCategories,
    required TResult Function(SearchProductEvent value) searchProduct,
    required TResult Function(FilterProductsByCategoryEvent value)
        filterProductsByCategory,
    required TResult Function(LogoutEvent value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAllProductsEvent value)? fetchAllProducts,
    TResult? Function(FetchAllCategoriesEvent value)? fetchAllCategories,
    TResult? Function(SearchProductEvent value)? searchProduct,
    TResult? Function(FilterProductsByCategoryEvent value)?
        filterProductsByCategory,
    TResult? Function(LogoutEvent value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAllProductsEvent value)? fetchAllProducts,
    TResult Function(FetchAllCategoriesEvent value)? fetchAllCategories,
    TResult Function(SearchProductEvent value)? searchProduct,
    TResult Function(FilterProductsByCategoryEvent value)?
        filterProductsByCategory,
    TResult Function(LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class LogoutEvent implements HomeEvent {
  const factory LogoutEvent() = _$LogoutEventImpl;
}

/// @nodoc
mixin _$HomeState {
  HomeStateStatus get status => throw _privateConstructorUsedError;
  List<String> get categories => throw _privateConstructorUsedError;
  List<ProductEntity> get defaultProducts => throw _privateConstructorUsedError;
  List<ProductEntity> get filteredProducts =>
      throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {HomeStateStatus status,
      List<String> categories,
      List<ProductEntity> defaultProducts,
      List<ProductEntity> filteredProducts,
      String message,
      String username});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? categories = null,
    Object? defaultProducts = null,
    Object? filteredProducts = null,
    Object? message = null,
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeStateStatus,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      defaultProducts: null == defaultProducts
          ? _value.defaultProducts
          : defaultProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>,
      filteredProducts: null == filteredProducts
          ? _value.filteredProducts
          : filteredProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {HomeStateStatus status,
      List<String> categories,
      List<ProductEntity> defaultProducts,
      List<ProductEntity> filteredProducts,
      String message,
      String username});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? categories = null,
    Object? defaultProducts = null,
    Object? filteredProducts = null,
    Object? message = null,
    Object? username = null,
  }) {
    return _then(_$HomeStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeStateStatus,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      defaultProducts: null == defaultProducts
          ? _value._defaultProducts
          : defaultProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>,
      filteredProducts: null == filteredProducts
          ? _value._filteredProducts
          : filteredProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {this.status = HomeStateStatus.initial,
      final List<String> categories = const [],
      final List<ProductEntity> defaultProducts = const [],
      final List<ProductEntity> filteredProducts = const [],
      this.message = '',
      this.username = '-'})
      : _categories = categories,
        _defaultProducts = defaultProducts,
        _filteredProducts = filteredProducts;

  @override
  @JsonKey()
  final HomeStateStatus status;
  final List<String> _categories;
  @override
  @JsonKey()
  List<String> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<ProductEntity> _defaultProducts;
  @override
  @JsonKey()
  List<ProductEntity> get defaultProducts {
    if (_defaultProducts is EqualUnmodifiableListView) return _defaultProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_defaultProducts);
  }

  final List<ProductEntity> _filteredProducts;
  @override
  @JsonKey()
  List<ProductEntity> get filteredProducts {
    if (_filteredProducts is EqualUnmodifiableListView)
      return _filteredProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredProducts);
  }

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String username;

  @override
  String toString() {
    return 'HomeState(status: $status, categories: $categories, defaultProducts: $defaultProducts, filteredProducts: $filteredProducts, message: $message, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other._defaultProducts, _defaultProducts) &&
            const DeepCollectionEquality()
                .equals(other._filteredProducts, _filteredProducts) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_defaultProducts),
      const DeepCollectionEquality().hash(_filteredProducts),
      message,
      username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final HomeStateStatus status,
      final List<String> categories,
      final List<ProductEntity> defaultProducts,
      final List<ProductEntity> filteredProducts,
      final String message,
      final String username}) = _$HomeStateImpl;

  @override
  HomeStateStatus get status;
  @override
  List<String> get categories;
  @override
  List<ProductEntity> get defaultProducts;
  @override
  List<ProductEntity> get filteredProducts;
  @override
  String get message;
  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
