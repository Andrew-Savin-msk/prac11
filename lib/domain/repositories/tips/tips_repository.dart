import 'package:prac11/domain/entities/tips/tip_article_model.dart';

abstract class TipsRepository {
  List<TipArticle> getAll();
  TipArticle? getById(String id);
}

