import 'package:prac11/domain/entities/focus/focus_session_model.dart';
import 'package:prac11/domain/repositories/focus/focus_session_repository.dart';

class GetFocusSessionsUseCase {
  final FocusSessionRepository _repository;

  GetFocusSessionsUseCase(this._repository);

  List<FocusSession> call() {
    return _repository.getSessions();
  }
}

