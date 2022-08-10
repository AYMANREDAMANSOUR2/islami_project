import 'package:flutter/material.dart';

class MyProviderApp extends ChangeNotifier{

  String AppLanguage='en';
  ThemeMode themeMode=ThemeMode.dark; //which theme app will be start with

  void changeLanguage(String languageCode){
    AppLanguage= languageCode;
    notifyListeners(); //notify any clients the object may have changed
  }

  void changeTheme(ThemeMode theme){
    themeMode= theme;
    notifyListeners(); //notify any clients the object may have changed
  }

  String getBackground(){ //to change background between two theme
    if(themeMode==ThemeMode.light){
      return 'assets/images/main_bg.png';
    }else{
      return 'assets/images/main_dark_bg.png';
    }

  }
}