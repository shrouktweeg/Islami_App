import 'package:flutter/material.dart';


class SettingProvider extends ChangeNotifier{
  String language='en';
  ThemeMode themeMode=ThemeMode.light;
  changeLanguage(String newLanguage){
    if(language==newLanguage) return;
    language=newLanguage;
    notifyListeners();
  }
  changeThemeMode(ThemeMode newTheme){
    if(themeMode==newTheme) return;
    themeMode=newTheme;
    notifyListeners();
  }
 bool isDark(){
     return (themeMode==ThemeMode.dark);
  }
  String getBackGround(){
    return isDark()? 'assets/images/home_dark_background.png':'assets/images/background.png';
  }
}