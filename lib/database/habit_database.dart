import 'package:flutter/cupertino.dart';
import 'package:isar/isar.dart';
import 'package:myapp/models/app_settings.dart';
import 'package:myapp/models/habit.dart';
import 'package:path_provider/path_provider.dart';

class Habitdatabase extends ChangeNotifier {
  static late Isar isar;

  static Future<void> initialize() async {
    final dir = await getApplicationDocumentsDirectory();
    isar =
        await Isar.open([HabitSchema, AppSettingsSchema], directory: dir.path);

    
  }

  Future<void> saveFirstLaunchDate()async {
    final existingSettings = await isar.appSettings.where().findFirst();
    if(existingSettings == null){
      final settings = AppSettings()..firstLaunchDate = DateTime.now();
      await isar.writeTxn(()=>isar.appSettings.put(settings));
    }
  }

  Future<DateTime?> getFirstLaunchDate()async{
    final settings = await isar.appSettings.where().findFirst();
    return settings?.firstLaunchDate;
  }

final List<Habit> currentHabits = [];

Future<void> addHabit(String habitName) async{
  final newHabit = Habit()..name = habitName;
  await isar.writeTxn(()=>isar.habits.put(newHabit));

  readHabit();
}

Future<void> readHabit()async{
  List<Habit> fetchedHabits = await isar.habits.where().findAll();
  currentHabits.clear();
  currentHabits.addAll(fetchedHabits);

  notifyListeners();

}



}
