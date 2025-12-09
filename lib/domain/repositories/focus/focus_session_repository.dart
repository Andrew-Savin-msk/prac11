import 'package:prac11/domain/entities/focus/focus_session_model.dart';

abstract class FocusSessionRepository {
  List<FocusSession> getSessions();
  void addSession(FocusSession session);
  void clearHistory();
}

