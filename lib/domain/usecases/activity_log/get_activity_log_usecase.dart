import 'package:prac11/domain/entities/activity_log/log_entry_model.dart';
import 'package:prac11/domain/repositories/activity_log/activity_log_repository.dart';

class GetActivityLogUseCase {
  final ActivityLogRepository _repository;

  GetActivityLogUseCase(this._repository);

  List<LogEntry> call() {
    return _repository.getEntries();
  }
}

