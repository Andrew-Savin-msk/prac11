import 'package:prac11/domain/entities/tips/tip_article_model.dart';
import 'package:prac11/domain/repositories/tips/tips_repository.dart';

class GetTipByIdUseCase {
  final TipsRepository _repository;

  GetTipByIdUseCase(this._repository);

  TipArticle? call(String id) {
    return _repository.getById(id);
  }
}

