import 'package:prac11/domain/entities/goals/goal_model.dart';

abstract class GoalRepository {
  List<Goal> getGoals();
  void addGoal(Goal goal);
  void deleteGoal(int index);
}

