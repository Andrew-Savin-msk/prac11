import 'package:prac11/core/models/tips/tip_article_model.dart';
import 'package:prac11/domain/repositories/tips/tips_repository.dart';

class GetTipsUseCase {
  final TipsRepository _repository;

  GetTipsUseCase(this._repository);

  List<TipArticle> call() {
    return _repository.getAll();
  }
}

