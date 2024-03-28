import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:my_product_app/core/exception/exception.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failures, Type>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}
