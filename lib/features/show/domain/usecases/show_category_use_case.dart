// features/show/domain/usecases/show_category_use_case.dart
import 'package:admain/core/errors/failurs.dart';import 'package:admain/core/errors/failurs.dart';
import 'package:admain/features/show/domain/entities/category_params.dart';
import 'package:admain/features/show/domain/repositories/show_repository.dart';
import 'package:dartz/dartz.dart';

class ShowCategoryUseCase {
  final ShowRepository repository;

  ShowCategoryUseCase({required this.repository});

  Future<Either<Failure,List <CategooryParams> >> call() async {
    return await repository.ShowCategory();
  }
}