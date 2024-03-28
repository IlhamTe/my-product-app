import 'package:hive/hive.dart';
import 'package:my_product_app/features/cart/domain/entities/cart_entity.dart';

part 'cart_model.g.dart';

@HiveType(typeId: 0)
class CartModel {
  @HiveField(0)
  final int productId;

  @HiveField(1)
  final String productName;

  @HiveField(2)
  final String image;

  @HiveField(3)
  final double price;

  @HiveField(4)
  final int quantity;

  CartModel({
    required this.productId,
    required this.productName,
    required this.image,
    required this.price,
    required this.quantity,
  });

  factory CartModel.fromEntity(CartEntity cartEntity) => CartModel(
        productId: cartEntity.productId,
        productName: cartEntity.productName,
        image: cartEntity.image,
        price: cartEntity.price,
        quantity: cartEntity.quantity,
      );

  CartEntity toEntity() => CartEntity(
        productId: productId,
        image: image,
        productName: productName,
        price: price,
        quantity: quantity,
      );
}
