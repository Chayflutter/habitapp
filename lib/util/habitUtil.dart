import '../models/habit.dart';

bool isHabitCompletedToday(List<DateTime> completedDays) {
  final today = DateTime.now();
  return completedDays.any((date) =>
      date.year == today.year &&
      date.month == today.month &&
      date.day == today.day);
}

Map<DateTime, int> prepareHeatMapData(List<Habit> habits) {
  Map<DateTime, int> dataset = {};

  for (var habit in habits) {
    for (var date in habit.completedDays) {
      final normalize = DateTime(date.year, date.month, date.day);

      if(dataset.containsKey(normalize)){
        dataset[normalize] = dataset[normalize]! + 1;
      }else{
        dataset[normalize] = 1; 
      }
    }
  }
  return dataset;
  
}
