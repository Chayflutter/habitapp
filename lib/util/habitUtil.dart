import '../models/habit.dart';

bool isHabitCompletedToday(List<DateTime> completedDays) {
  final today = DateTime.now();
  return completedDays.any((date) =>
      date.year == today.year &&
      date.month == today.month &&
      date.day == today.day);
}
Map<DateTime, int> prepareHeatMapData(List<Habit> habits){
  Map<DateTime, int>dataset={};
  
}