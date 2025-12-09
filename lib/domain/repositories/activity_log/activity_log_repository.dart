import 'package:prac11/domain/entities/activity_log/log_entry_model.dart';

abstract class ActivityLogRepository {
  List<LogEntry> getEntries();
  void log({
    required String type,
    required String title,
    String? description,
    DateTime? timestamp,
  });
  void clear();
  void logGoalCreated(String goalTitle);
  void logGoalDeleted(String goalTitle);
  void logGoalCompleted(String goalTitle);
  void logAuthLogin(String email);
  void logAuthLogout();
  void logProfileUpdated(String name, String email);
  void logAchievementUnlocked(String achievementTitle);
}

