import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipes_app/Themes/MyThemes.dart';

class changeThemeButtonWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final themeProvider=Provider.of<ThemeProvider>(context);
    return Switch.adaptive(value: themeProvider.isDarkMode, 
    activeColor:Colors.white,
    onChanged: (value){
 final provider=Provider.of<ThemeProvider>(context,listen: false);
 provider.toggleTheme(value);

    });
  }

}