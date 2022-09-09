import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class ThemeProvider extends ChangeNotifier{
  ThemeMode themeMode=ThemeMode.light;
  bool get isDarkMode => themeMode==ThemeMode.dark;
  void toggleTheme(bool isOn){
    themeMode=isOn?ThemeMode.dark:ThemeMode.light;
    notifyListeners();

  }
  // Future<void>swapTheme()async{
  //   SharedPreferences prefs=await SharedPreferences.getInstance();
  //   if(themeMode==MyThemes.darkTheme){
  //     themeMode=ThemeMode.light;

  //   }
  //   else{
  //     themeMode=ThemeMode.light
  //   }
  // }


}
class MyThemes{
  static final darkTheme=ThemeData(
    primaryColor: Colors.white,
    scaffoldBackgroundColor: Colors.grey.shade900,
    colorScheme: ColorScheme.dark(),
  
  );
  static final lightTheme=ThemeData(
        primaryColor: Colors.black,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light()
  );
}