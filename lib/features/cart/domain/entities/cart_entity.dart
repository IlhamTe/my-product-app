import 'package:equatable/equatable.dart';

class CartEntity extends Equatable {
  final int productId;
  final String image;
  final String productName;
  final double price;
  final int quantity;

  const CartEntity({
    required this.productId,
    required this.productName,
    required this.image,
    required this.price,
    required this.quantity,
  });

  @override
  List<Object?> get props => [
        image,
        productName,
        price,
        quantity,
      ];
}
