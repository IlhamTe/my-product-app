import 'package:equatable/equatable.dart';

class RatingEntity extends Equatable {
  final double rate;
  final int count;

  const RatingEntity({
    required this.rate,
    required this.count,
  });

  Map<String, dynamic> toJson() {
    return {
      'rate': rate,
      'count': count,
    };
  }

  @override
  List<Object?> get props => [rate, count];
}
