// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCarts,
    required TResult Function(AddCartParam param) addCart,
    required TResult Function(UpdateProductQuantityParam param)
        updateProductQuantity,
    required TResult Function(int index) deleteCart,
    required TResult Function() deleteAllCarts,
    required TResult Function() countTotalPriceAndQuantityProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCarts,
    TResult? Function(AddCartParam param)? addCart,
    TResult? Function(UpdateProductQuantityParam param)? updateProductQuantity,
    TResult? Function(int index)? deleteCart,
    TResult? Function()? deleteAllCarts,
    TResult? Function()? countTotalPriceAndQuantityProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCarts,
    TResult Function(AddCartParam param)? addCart,
    TResult Function(UpdateProductQuantityParam param)? updateProductQuantity,
    TResult Function(int index)? deleteCart,
    TResult Function()? deleteAllCarts,
    TResult Function()? countTotalPriceAndQuantityProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCartsEvent value) getAllCarts,
    required TResult Function(AddCartEvent value) addCart,
    required TResult Function(UpdateProductQuantityEvent value)
        updateProductQuantity,
    required TResult Function(DeleteCartEvent value) deleteCart,
    required TResult Function(DeleteAllCartsEvent value) deleteAllCarts,
    required TResult Function(CountTotalPriceAndQuantityProductsEvent value)
        countTotalPriceAndQuantityProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCartsEvent value)? getAllCarts,
    TResult? Function(AddCartEvent value)? addCart,
    TResult? Function(UpdateProductQuantityEvent value)? updateProductQuantity,
    TResult? Function(DeleteCartEvent value)? deleteCart,
    TResult? Function(DeleteAllCartsEvent value)? deleteAllCarts,
    TResult? Function(CountTotalPriceAndQuantityProductsEvent value)?
        countTotalPriceAndQuantityProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCartsEvent value)? getAllCarts,
    TResult Function(AddCartEvent value)? addCart,
    TResult Function(UpdateProductQuantityEvent value)? updateProductQuantity,
    TResult Function(DeleteCartEvent value)? deleteCart,
    TResult Function(DeleteAllCartsEvent value)? deleteAllCarts,
    TResult Function(CountTotalPriceAndQuantityProductsEvent value)?
        countTotalPriceAndQuantityProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllCartsEventImplCopyWith<$Res> {
  factory _$$GetAllCartsEventImplCopyWith(_$GetAllCartsEventImpl value,
          $Res Function(_$GetAllCartsEventImpl) then) =
      __$$GetAllCartsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllCartsEventImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$GetAllCartsEventImpl>
    implements _$$GetAllCartsEventImplCopyWith<$Res> {
  __$$GetAllCartsEventImplCopyWithImpl(_$GetAllCartsEventImpl _value,
      $Res Function(_$GetAllCartsEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllCartsEventImpl implements GetAllCartsEvent {
  const _$GetAllCartsEventImpl();

  @override
  String toString() {
    return 'CartEvent.getAllCarts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllCartsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCarts,
    required TResult Function(AddCartParam param) addCart,
    required TResult Function(UpdateProductQuantityParam param)
        updateProductQuantity,
    required TResult Function(int index) deleteCart,
    required TResult Function() deleteAllCarts,
    required TResult Function() countTotalPriceAndQuantityProducts,
  }) {
    return getAllCarts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCarts,
    TResult? Function(AddCartParam param)? addCart,
    TResult? Function(UpdateProductQuantityParam param)? updateProductQuantity,
    TResult? Function(int index)? deleteCart,
    TResult? Function()? deleteAllCarts,
    TResult? Function()? countTotalPriceAndQuantityProducts,
  }) {
    return getAllCarts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCarts,
    TResult Function(AddCartParam param)? addCart,
    TResult Function(UpdateProductQuantityParam param)? updateProductQuantity,
    TResult Function(int index)? deleteCart,
    TResult Function()? deleteAllCarts,
    TResult Function()? countTotalPriceAndQuantityProducts,
    required TResult orElse(),
  }) {
    if (getAllCarts != null) {
      return getAllCarts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCartsEvent value) getAllCarts,
    required TResult Function(AddCartEvent value) addCart,
    required TResult Function(UpdateProductQuantityEvent value)
        updateProductQuantity,
    required TResult Function(DeleteCartEvent value) deleteCart,
    required TResult Function(DeleteAllCartsEvent value) deleteAllCarts,
    required TResult Function(CountTotalPriceAndQuantityProductsEvent value)
        countTotalPriceAndQuantityProducts,
  }) {
    return getAllCarts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCartsEvent value)? getAllCarts,
    TResult? Function(AddCartEvent value)? addCart,
    TResult? Function(UpdateProductQuantityEvent value)? updateProductQuantity,
    TResult? Function(DeleteCartEvent value)? deleteCart,
    TResult? Function(DeleteAllCartsEvent value)? deleteAllCarts,
    TResult? Function(CountTotalPriceAndQuantityProductsEvent value)?
        countTotalPriceAndQuantityProducts,
  }) {
    return getAllCarts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCartsEvent value)? getAllCarts,
    TResult Function(AddCartEvent value)? addCart,
    TResult Function(UpdateProductQuantityEvent value)? updateProductQuantity,
    TResult Function(DeleteCartEvent value)? deleteCart,
    TResult Function(DeleteAllCartsEvent value)? deleteAllCarts,
    TResult Function(CountTotalPriceAndQuantityProductsEvent value)?
        countTotalPriceAndQuantityProducts,
    required TResult orElse(),
  }) {
    if (getAllCarts != null) {
      return getAllCarts(this);
    }
    return orElse();
  }
}

abstract class GetAllCartsEvent implements CartEvent {
  const factory GetAllCartsEvent() = _$GetAllCartsEventImpl;
}

/// @nodoc
abstract class _$$AddCartEventImplCopyWith<$Res> {
  factory _$$AddCartEventImplCopyWith(
          _$AddCartEventImpl value, $Res Function(_$AddCartEventImpl) then) =
      __$$AddCartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddCartParam param});
}

/// @nodoc
class __$$AddCartEventImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$AddCartEventImpl>
    implements _$$AddCartEventImplCopyWith<$Res> {
  __$$AddCartEventImplCopyWithImpl(
      _$AddCartEventImpl _value, $Res Function(_$AddCartEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_$AddCartEventImpl(
      null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as AddCartParam,
    ));
  }
}

/// @nodoc

class _$AddCartEventImpl implements AddCartEvent {
  const _$AddCartEventImpl(this.param);

  @override
  final AddCartParam param;

  @override
  String toString() {
    return 'CartEvent.addCart(param: $param)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCartEventImpl &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCartEventImplCopyWith<_$AddCartEventImpl> get copyWith =>
      __$$AddCartEventImplCopyWithImpl<_$AddCartEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCarts,
    required TResult Function(AddCartParam param) addCart,
    required TResult Function(UpdateProductQuantityParam param)
        updateProductQuantity,
    required TResult Function(int index) deleteCart,
    required TResult Function() deleteAllCarts,
    required TResult Function() countTotalPriceAndQuantityProducts,
  }) {
    return addCart(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCarts,
    TResult? Function(AddCartParam param)? addCart,
    TResult? Function(UpdateProductQuantityParam param)? updateProductQuantity,
    TResult? Function(int index)? deleteCart,
    TResult? Function()? deleteAllCarts,
    TResult? Function()? countTotalPriceAndQuantityProducts,
  }) {
    return addCart?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCarts,
    TResult Function(AddCartParam param)? addCart,
    TResult Function(UpdateProductQuantityParam param)? updateProductQuantity,
    TResult Function(int index)? deleteCart,
    TResult Function()? deleteAllCarts,
    TResult Function()? countTotalPriceAndQuantityProducts,
    required TResult orElse(),
  }) {
    if (addCart != null) {
      return addCart(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCartsEvent value) getAllCarts,
    required TResult Function(AddCartEvent value) addCart,
    required TResult Function(UpdateProductQuantityEvent value)
        updateProductQuantity,
    required TResult Function(DeleteCartEvent value) deleteCart,
    required TResult Function(DeleteAllCartsEvent value) deleteAllCarts,
    required TResult Function(CountTotalPriceAndQuantityProductsEvent value)
        countTotalPriceAndQuantityProducts,
  }) {
    return addCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCartsEvent value)? getAllCarts,
    TResult? Function(AddCartEvent value)? addCart,
    TResult? Function(UpdateProductQuantityEvent value)? updateProductQuantity,
    TResult? Function(DeleteCartEvent value)? deleteCart,
    TResult? Function(DeleteAllCartsEvent value)? deleteAllCarts,
    TResult? Function(CountTotalPriceAndQuantityProductsEvent value)?
        countTotalPriceAndQuantityProducts,
  }) {
    return addCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCartsEvent value)? getAllCarts,
    TResult Function(AddCartEvent value)? addCart,
    TResult Function(UpdateProductQuantityEvent value)? updateProductQuantity,
    TResult Function(DeleteCartEvent value)? deleteCart,
    TResult Function(DeleteAllCartsEvent value)? deleteAllCarts,
    TResult Function(CountTotalPriceAndQuantityProductsEvent value)?
        countTotalPriceAndQuantityProducts,
    required TResult orElse(),
  }) {
    if (addCart != null) {
      return addCart(this);
    }
    return orElse();
  }
}

abstract class AddCartEvent implements CartEvent {
  const factory AddCartEvent(final AddCartParam param) = _$AddCartEventImpl;

  AddCartParam get param;
  @JsonKey(ignore: true)
  _$$AddCartEventImplCopyWith<_$AddCartEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateProductQuantityEventImplCopyWith<$Res> {
  factory _$$UpdateProductQuantityEventImplCopyWith(
          _$UpdateProductQuantityEventImpl value,
          $Res Function(_$UpdateProductQuantityEventImpl) then) =
      __$$UpdateProductQuantityEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateProductQuantityParam param});
}

/// @nodoc
class __$$UpdateProductQuantityEventImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$UpdateProductQuantityEventImpl>
    implements _$$UpdateProductQuantityEventImplCopyWith<$Res> {
  __$$UpdateProductQuantityEventImplCopyWithImpl(
      _$UpdateProductQuantityEventImpl _value,
      $Res Function(_$UpdateProductQuantityEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_$UpdateProductQuantityEventImpl(
      null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as UpdateProductQuantityParam,
    ));
  }
}

/// @nodoc

class _$UpdateProductQuantityEventImpl implements UpdateProductQuantityEvent {
  const _$UpdateProductQuantityEventImpl(this.param);

  @override
  final UpdateProductQuantityParam param;

  @override
  String toString() {
    return 'CartEvent.updateProductQuantity(param: $param)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProductQuantityEventImpl &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProductQuantityEventImplCopyWith<_$UpdateProductQuantityEventImpl>
      get copyWith => __$$UpdateProductQuantityEventImplCopyWithImpl<
          _$UpdateProductQuantityEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCarts,
    required TResult Function(AddCartParam param) addCart,
    required TResult Function(UpdateProductQuantityParam param)
        updateProductQuantity,
    required TResult Function(int index) deleteCart,
    required TResult Function() deleteAllCarts,
    required TResult Function() countTotalPriceAndQuantityProducts,
  }) {
    return updateProductQuantity(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCarts,
    TResult? Function(AddCartParam param)? addCart,
    TResult? Function(UpdateProductQuantityParam param)? updateProductQuantity,
    TResult? Function(int index)? deleteCart,
    TResult? Function()? deleteAllCarts,
    TResult? Function()? countTotalPriceAndQuantityProducts,
  }) {
    return updateProductQuantity?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCarts,
    TResult Function(AddCartParam param)? addCart,
    TResult Function(UpdateProductQuantityParam param)? updateProductQuantity,
    TResult Function(int index)? deleteCart,
    TResult Function()? deleteAllCarts,
    TResult Function()? countTotalPriceAndQuantityProducts,
    required TResult orElse(),
  }) {
    if (updateProductQuantity != null) {
      return updateProductQuantity(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCartsEvent value) getAllCarts,
    required TResult Function(AddCartEvent value) addCart,
    required TResult Function(UpdateProductQuantityEvent value)
        updateProductQuantity,
    required TResult Function(DeleteCartEvent value) deleteCart,
    required TResult Function(DeleteAllCartsEvent value) deleteAllCarts,
    required TResult Function(CountTotalPriceAndQuantityProductsEvent value)
        countTotalPriceAndQuantityProducts,
  }) {
    return updateProductQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCartsEvent value)? getAllCarts,
    TResult? Function(AddCartEvent value)? addCart,
    TResult? Function(UpdateProductQuantityEvent value)? updateProductQuantity,
    TResult? Function(DeleteCartEvent value)? deleteCart,
    TResult? Function(DeleteAllCartsEvent value)? deleteAllCarts,
    TResult? Function(CountTotalPriceAndQuantityProductsEvent value)?
        countTotalPriceAndQuantityProducts,
  }) {
    return updateProductQuantity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCartsEvent value)? getAllCarts,
    TResult Function(AddCartEvent value)? addCart,
    TResult Function(UpdateProductQuantityEvent value)? updateProductQuantity,
    TResult Function(DeleteCartEvent value)? deleteCart,
    TResult Function(DeleteAllCartsEvent value)? deleteAllCarts,
    TResult Function(CountTotalPriceAndQuantityProductsEvent value)?
        countTotalPriceAndQuantityProducts,
    required TResult orElse(),
  }) {
    if (updateProductQuantity != null) {
      return updateProductQuantity(this);
    }
    return orElse();
  }
}

abstract class UpdateProductQuantityEvent implements CartEvent {
  const factory UpdateProductQuantityEvent(
          final UpdateProductQuantityParam param) =
      _$UpdateProductQuantityEventImpl;

  UpdateProductQuantityParam get param;
  @JsonKey(ignore: true)
  _$$UpdateProductQuantityEventImplCopyWith<_$UpdateProductQuantityEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCartEventImplCopyWith<$Res> {
  factory _$$DeleteCartEventImplCopyWith(_$DeleteCartEventImpl value,
          $Res Function(_$DeleteCartEventImpl) then) =
      __$$DeleteCartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$DeleteCartEventImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$DeleteCartEventImpl>
    implements _$$DeleteCartEventImplCopyWith<$Res> {
  __$$DeleteCartEventImplCopyWithImpl(
      _$DeleteCartEventImpl _value, $Res Function(_$DeleteCartEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$DeleteCartEventImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteCartEventImpl implements DeleteCartEvent {
  const _$DeleteCartEventImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'CartEvent.deleteCart(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCartEventImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCartEventImplCopyWith<_$DeleteCartEventImpl> get copyWith =>
      __$$DeleteCartEventImplCopyWithImpl<_$DeleteCartEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCarts,
    required TResult Function(AddCartParam param) addCart,
    required TResult Function(UpdateProductQuantityParam param)
        updateProductQuantity,
    required TResult Function(int index) deleteCart,
    required TResult Function() deleteAllCarts,
    required TResult Function() countTotalPriceAndQuantityProducts,
  }) {
    return deleteCart(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCarts,
    TResult? Function(AddCartParam param)? addCart,
    TResult? Function(UpdateProductQuantityParam param)? updateProductQuantity,
    TResult? Function(int index)? deleteCart,
    TResult? Function()? deleteAllCarts,
    TResult? Function()? countTotalPriceAndQuantityProducts,
  }) {
    return deleteCart?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCarts,
    TResult Function(AddCartParam param)? addCart,
    TResult Function(UpdateProductQuantityParam param)? updateProductQuantity,
    TResult Function(int index)? deleteCart,
    TResult Function()? deleteAllCarts,
    TResult Function()? countTotalPriceAndQuantityProducts,
    required TResult orElse(),
  }) {
    if (deleteCart != null) {
      return deleteCart(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCartsEvent value) getAllCarts,
    required TResult Function(AddCartEvent value) addCart,
    required TResult Function(UpdateProductQuantityEvent value)
        updateProductQuantity,
    required TResult Function(DeleteCartEvent value) deleteCart,
    required TResult Function(DeleteAllCartsEvent value) deleteAllCarts,
    required TResult Function(CountTotalPriceAndQuantityProductsEvent value)
        countTotalPriceAndQuantityProducts,
  }) {
    return deleteCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCartsEvent value)? getAllCarts,
    TResult? Function(AddCartEvent value)? addCart,
    TResult? Function(UpdateProductQuantityEvent value)? updateProductQuantity,
    TResult? Function(DeleteCartEvent value)? deleteCart,
    TResult? Function(DeleteAllCartsEvent value)? deleteAllCarts,
    TResult? Function(CountTotalPriceAndQuantityProductsEvent value)?
        countTotalPriceAndQuantityProducts,
  }) {
    return deleteCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCartsEvent value)? getAllCarts,
    TResult Function(AddCartEvent value)? addCart,
    TResult Function(UpdateProductQuantityEvent value)? updateProductQuantity,
    TResult Function(DeleteCartEvent value)? deleteCart,
    TResult Function(DeleteAllCartsEvent value)? deleteAllCarts,
    TResult Function(CountTotalPriceAndQuantityProductsEvent value)?
        countTotalPriceAndQuantityProducts,
    required TResult orElse(),
  }) {
    if (deleteCart != null) {
      return deleteCart(this);
    }
    return orElse();
  }
}

abstract class DeleteCartEvent implements CartEvent {
  const factory DeleteCartEvent(final int index) = _$DeleteCartEventImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$DeleteCartEventImplCopyWith<_$DeleteCartEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteAllCartsEventImplCopyWith<$Res> {
  factory _$$DeleteAllCartsEventImplCopyWith(_$DeleteAllCartsEventImpl value,
          $Res Function(_$DeleteAllCartsEventImpl) then) =
      __$$DeleteAllCartsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteAllCartsEventImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$DeleteAllCartsEventImpl>
    implements _$$DeleteAllCartsEventImplCopyWith<$Res> {
  __$$DeleteAllCartsEventImplCopyWithImpl(_$DeleteAllCartsEventImpl _value,
      $Res Function(_$DeleteAllCartsEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteAllCartsEventImpl implements DeleteAllCartsEvent {
  const _$DeleteAllCartsEventImpl();

  @override
  String toString() {
    return 'CartEvent.deleteAllCarts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAllCartsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCarts,
    required TResult Function(AddCartParam param) addCart,
    required TResult Function(UpdateProductQuantityParam param)
        updateProductQuantity,
    required TResult Function(int index) deleteCart,
    required TResult Function() deleteAllCarts,
    required TResult Function() countTotalPriceAndQuantityProducts,
  }) {
    return deleteAllCarts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCarts,
    TResult? Function(AddCartParam param)? addCart,
    TResult? Function(UpdateProductQuantityParam param)? updateProductQuantity,
    TResult? Function(int index)? deleteCart,
    TResult? Function()? deleteAllCarts,
    TResult? Function()? countTotalPriceAndQuantityProducts,
  }) {
    return deleteAllCarts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCarts,
    TResult Function(AddCartParam param)? addCart,
    TResult Function(UpdateProductQuantityParam param)? updateProductQuantity,
    TResult Function(int index)? deleteCart,
    TResult Function()? deleteAllCarts,
    TResult Function()? countTotalPriceAndQuantityProducts,
    required TResult orElse(),
  }) {
    if (deleteAllCarts != null) {
      return deleteAllCarts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCartsEvent value) getAllCarts,
    required TResult Function(AddCartEvent value) addCart,
    required TResult Function(UpdateProductQuantityEvent value)
        updateProductQuantity,
    required TResult Function(DeleteCartEvent value) deleteCart,
    required TResult Function(DeleteAllCartsEvent value) deleteAllCarts,
    required TResult Function(CountTotalPriceAndQuantityProductsEvent value)
        countTotalPriceAndQuantityProducts,
  }) {
    return deleteAllCarts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCartsEvent value)? getAllCarts,
    TResult? Function(AddCartEvent value)? addCart,
    TResult? Function(UpdateProductQuantityEvent value)? updateProductQuantity,
    TResult? Function(DeleteCartEvent value)? deleteCart,
    TResult? Function(DeleteAllCartsEvent value)? deleteAllCarts,
    TResult? Function(CountTotalPriceAndQuantityProductsEvent value)?
        countTotalPriceAndQuantityProducts,
  }) {
    return deleteAllCarts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCartsEvent value)? getAllCarts,
    TResult Function(AddCartEvent value)? addCart,
    TResult Function(UpdateProductQuantityEvent value)? updateProductQuantity,
    TResult Function(DeleteCartEvent value)? deleteCart,
    TResult Function(DeleteAllCartsEvent value)? deleteAllCarts,
    TResult Function(CountTotalPriceAndQuantityProductsEvent value)?
        countTotalPriceAndQuantityProducts,
    required TResult orElse(),
  }) {
    if (deleteAllCarts != null) {
      return deleteAllCarts(this);
    }
    return orElse();
  }
}

abstract class DeleteAllCartsEvent implements CartEvent {
  const factory DeleteAllCartsEvent() = _$DeleteAllCartsEventImpl;
}

/// @nodoc
abstract class _$$CountTotalPriceAndQuantityProductsEventImplCopyWith<$Res> {
  factory _$$CountTotalPriceAndQuantityProductsEventImplCopyWith(
          _$CountTotalPriceAndQuantityProductsEventImpl value,
          $Res Function(_$CountTotalPriceAndQuantityProductsEventImpl) then) =
      __$$CountTotalPriceAndQuantityProductsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CountTotalPriceAndQuantityProductsEventImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res,
        _$CountTotalPriceAndQuantityProductsEventImpl>
    implements _$$CountTotalPriceAndQuantityProductsEventImplCopyWith<$Res> {
  __$$CountTotalPriceAndQuantityProductsEventImplCopyWithImpl(
      _$CountTotalPriceAndQuantityProductsEventImpl _value,
      $Res Function(_$CountTotalPriceAndQuantityProductsEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CountTotalPriceAndQuantityProductsEventImpl
    implements CountTotalPriceAndQuantityProductsEvent {
  const _$CountTotalPriceAndQuantityProductsEventImpl();

  @override
  String toString() {
    return 'CartEvent.countTotalPriceAndQuantityProducts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountTotalPriceAndQuantityProductsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCarts,
    required TResult Function(AddCartParam param) addCart,
    required TResult Function(UpdateProductQuantityParam param)
        updateProductQuantity,
    required TResult Function(int index) deleteCart,
    required TResult Function() deleteAllCarts,
    required TResult Function() countTotalPriceAndQuantityProducts,
  }) {
    return countTotalPriceAndQuantityProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCarts,
    TResult? Function(AddCartParam param)? addCart,
    TResult? Function(UpdateProductQuantityParam param)? updateProductQuantity,
    TResult? Function(int index)? deleteCart,
    TResult? Function()? deleteAllCarts,
    TResult? Function()? countTotalPriceAndQuantityProducts,
  }) {
    return countTotalPriceAndQuantityProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCarts,
    TResult Function(AddCartParam param)? addCart,
    TResult Function(UpdateProductQuantityParam param)? updateProductQuantity,
    TResult Function(int index)? deleteCart,
    TResult Function()? deleteAllCarts,
    TResult Function()? countTotalPriceAndQuantityProducts,
    required TResult orElse(),
  }) {
    if (countTotalPriceAndQuantityProducts != null) {
      return countTotalPriceAndQuantityProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCartsEvent value) getAllCarts,
    required TResult Function(AddCartEvent value) addCart,
    required TResult Function(UpdateProductQuantityEvent value)
        updateProductQuantity,
    required TResult Function(DeleteCartEvent value) deleteCart,
    required TResult Function(DeleteAllCartsEvent value) deleteAllCarts,
    required TResult Function(CountTotalPriceAndQuantityProductsEvent value)
        countTotalPriceAndQuantityProducts,
  }) {
    return countTotalPriceAndQuantityProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCartsEvent value)? getAllCarts,
    TResult? Function(AddCartEvent value)? addCart,
    TResult? Function(UpdateProductQuantityEvent value)? updateProductQuantity,
    TResult? Function(DeleteCartEvent value)? deleteCart,
    TResult? Function(DeleteAllCartsEvent value)? deleteAllCarts,
    TResult? Function(CountTotalPriceAndQuantityProductsEvent value)?
        countTotalPriceAndQuantityProducts,
  }) {
    return countTotalPriceAndQuantityProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCartsEvent value)? getAllCarts,
    TResult Function(AddCartEvent value)? addCart,
    TResult Function(UpdateProductQuantityEvent value)? updateProductQuantity,
    TResult Function(DeleteCartEvent value)? deleteCart,
    TResult Function(DeleteAllCartsEvent value)? deleteAllCarts,
    TResult Function(CountTotalPriceAndQuantityProductsEvent value)?
        countTotalPriceAndQuantityProducts,
    required TResult orElse(),
  }) {
    if (countTotalPriceAndQuantityProducts != null) {
      return countTotalPriceAndQuantityProducts(this);
    }
    return orElse();
  }
}

abstract class CountTotalPriceAndQuantityProductsEvent implements CartEvent {
  const factory CountTotalPriceAndQuantityProductsEvent() =
      _$CountTotalPriceAndQuantityProductsEventImpl;
}

/// @nodoc
mixin _$CartState {
  CartStateStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<CartEntity> get carts => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;
  int get totalProducts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
  $Res call(
      {CartStateStatus status,
      String message,
      List<CartEntity> carts,
      double totalPrice,
      int totalProducts});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? carts = null,
    Object? totalPrice = null,
    Object? totalProducts = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CartStateStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      carts: null == carts
          ? _value.carts
          : carts // ignore: cast_nullable_to_non_nullable
              as List<CartEntity>,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      totalProducts: null == totalProducts
          ? _value.totalProducts
          : totalProducts // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartStateImplCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$$CartStateImplCopyWith(
          _$CartStateImpl value, $Res Function(_$CartStateImpl) then) =
      __$$CartStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CartStateStatus status,
      String message,
      List<CartEntity> carts,
      double totalPrice,
      int totalProducts});
}

/// @nodoc
class __$$CartStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartStateImpl>
    implements _$$CartStateImplCopyWith<$Res> {
  __$$CartStateImplCopyWithImpl(
      _$CartStateImpl _value, $Res Function(_$CartStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? carts = null,
    Object? totalPrice = null,
    Object? totalProducts = null,
  }) {
    return _then(_$CartStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CartStateStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      carts: null == carts
          ? _value._carts
          : carts // ignore: cast_nullable_to_non_nullable
              as List<CartEntity>,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      totalProducts: null == totalProducts
          ? _value.totalProducts
          : totalProducts // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CartStateImpl implements _CartState {
  const _$CartStateImpl(
      {this.status = CartStateStatus.initial,
      this.message = '',
      final List<CartEntity> carts = const [],
      this.totalPrice = 0,
      this.totalProducts = 0})
      : _carts = carts;

  @override
  @JsonKey()
  final CartStateStatus status;
  @override
  @JsonKey()
  final String message;
  final List<CartEntity> _carts;
  @override
  @JsonKey()
  List<CartEntity> get carts {
    if (_carts is EqualUnmodifiableListView) return _carts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_carts);
  }

  @override
  @JsonKey()
  final double totalPrice;
  @override
  @JsonKey()
  final int totalProducts;

  @override
  String toString() {
    return 'CartState(status: $status, message: $message, carts: $carts, totalPrice: $totalPrice, totalProducts: $totalProducts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._carts, _carts) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.totalProducts, totalProducts) ||
                other.totalProducts == totalProducts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_carts), totalPrice, totalProducts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      __$$CartStateImplCopyWithImpl<_$CartStateImpl>(this, _$identity);
}

abstract class _CartState implements CartState {
  const factory _CartState(
      {final CartStateStatus status,
      final String message,
      final List<CartEntity> carts,
      final double totalPrice,
      final int totalProducts}) = _$CartStateImpl;

  @override
  CartStateStatus get status;
  @override
  String get message;
  @override
  List<CartEntity> get carts;
  @override
  double get totalPrice;
  @override
  int get totalProducts;
  @override
  @JsonKey(ignore: true)
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
