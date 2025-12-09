import 'package:prac11/domain/entities/focus/focus_session_model.dart';

class FocusSessionLocalDataSource {
  final List<FocusSession> _sessions = [];

  List<FocusSession> getSessions() {
    return List.unmodifiable(_sessions);
  }

  void addSession(FocusSession session) {
    _sessions.insert(0, session);
  }

  void clearHistory() {
    _sessions.clear();
  }
}

