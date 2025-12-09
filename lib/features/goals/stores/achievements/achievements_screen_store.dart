import 'package:mobx/mobx.dart';
import 'package:get_it/get_it.dart';

import '../../models/achievement_model.dart';
import '../../services/achievement_service.dart';

part 'achievements_screen_store.g.dart';

class AchievementsScreenStore = _AchievementsScreenStore
    with _$AchievementsScreenStore;

abstract class _AchievementsScreenStore with Store {
  _AchievementsScreenStore() {
    loadAchievements();
  }

  final AchievementService _achievementService = GetIt.I<AchievementService>();

  @observable
  ObservableList<Achievement> achievements = ObservableList<Achievement>();

  @computed
  bool get hasAchievements => achievements.isNotEmpty;

  @computed
  int get unlockedCount =>
      achievements.where((a) => a.isUnlocked).length;

  @action
  void loadAchievements() {
    achievements = ObservableList.of(_achievementService.getAchievements());
  }

  @action
  void refresh() => loadAchievements();
}

