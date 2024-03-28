import 'package:json_annotation/json_annotation.dart';
import 'package:my_product_app/features/home/domain/entities/rating_entity.dart';

part 'rating_model.g.dart';

@JsonSerializable()
class RatingModel extends RatingEntity {
  const RatingModel({
    double? rate,
    int? count,
  }) : super(rate: rate ?? 0.0, count: count ?? 0);

  factory RatingModel.fromJson(Map<String, dynamic> json) =>
      _$RatingModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RatingModelToJson(this);
}
