import 'package:flutter/cupertino.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class Habitdatabase extends ChangeNotifier{
  static late Isar isar ;

  static Future<void> initialize() async{
    final dir  = await getApplicationDocumentsDirectory(); 
  }
}

