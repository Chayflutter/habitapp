import 'package:flutter/material.dart';
import 'package:myapp/theme/dark.dart';
import 'package:myapp/theme/light.dart';

class Themeprovider extends ChangeNotifier{
  ThemeData _themeData = light;
  ThemeData get themeData=> _themeData;

  bool get isDark =>  _themeData == dark;

  set themeData(ThemeData themeData ){
    _themeData= themeData;
    notifyListeners();
     

    
  }
    void toggleTheme(){
      if(_themeData == light){
        themeData = dark;

      }else{themeData = light;}
    }
  
  }