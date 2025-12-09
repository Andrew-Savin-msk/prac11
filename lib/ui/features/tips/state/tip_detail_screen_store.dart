import 'package:prac11/domain/entities/tips/tip_article_model.dart';
import 'package:prac11/domain/usecases/activity_log/log_tip_opened_usecase.dart';

class TipDetailScreenStore {
  TipDetailScreenStore(
    this.article,
    this._logTipOpenedUseCase,
  ) {
    _logTipOpened();
  }

  final TipArticle article;
  final LogTipOpenedUseCase _logTipOpenedUseCase;

  void _logTipOpened() {
    _logTipOpenedUseCase(article.title);
  }
}

