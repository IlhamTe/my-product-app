import 'package:json_annotation/json_annotation.dart';
import 'package:my_product_app/features/authentication/data/models/rating_model.dart';
import 'package:my_product_app/features/home/domain/entities/product_entity.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel extends ProductEntity {
  const ProductModel({
    int? id,
    String? title,
    double? price,
    String? description,
    String? category,
    String? image,
    RatingModel? rating,
  }) : super(
          id: id ?? 0,
          title: title ?? '',
          price: price ?? 0.0,
          description: description ?? '',
          category: category ?? '',
          image: image ?? '',
          rating: rating ?? const RatingModel(rate: 0.0, count: 0),
        );

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}
