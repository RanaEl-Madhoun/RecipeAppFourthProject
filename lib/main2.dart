import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipes_app/Provider/FireStoreProvider.dart';
import 'package:recipes_app/Provider/RecipeProvider.dart';
import 'package:recipes_app/Signup/SignUp.dart';
import 'package:recipes_app/Themes/MyThemes.dart';
import 'package:recipes_app/UI/Screens/SplashScreen.dart';
import 'package:recipes_app/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Basics/AppRouter.dart';
import 'Provider/AuthProvider.dart';
import 'UI/Screens/DietScreen.dart';
import 'firebase_options.dart';
import 'onBording/onbordigSlider.dart';

void main()async {

   WidgetsFlutterBinding.ensureInitialized();
    final prefs=await SharedPreferences.getInstance();
    final  showHome=prefs.getBool('showHome')??false;
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
 runApp(MultiProvider(providers: 
 [
  ChangeNotifierProvider<AuthProvider>(create: (BuildContext context) { 
        return AuthProvider();
       },),
       ChangeNotifierProvider<FireStoreProvider>(create: (BuildContext context) { 
        return FireStoreProvider();
       },),
       ChangeNotifierProvider<ThemeProvider>(create: (BuildContext context) { 
        return ThemeProvider();
       },),
       ChangeNotifierProvider<RecipeProvider>(create: (BuildContext context) { 
        return RecipeProvider();
       },),
       ],
       child: MyApp(showHome:showHome,),) );
 }

class MyApp extends StatelessWidget {
  final bool showHome;
  const MyApp({Key? key,
  required this.showHome,
  }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
    
        navigatorKey: AppRouter.navKey,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Auth',
         themeMode: themeProvider.themeMode,
            theme: MyThemes.lightTheme,
            darkTheme: MyThemes.darkTheme,
        // theme: ThemeData(
        //     primaryColor: kPrimaryColor,
        //     scaffoldBackgroundColor: Colors.white,
        //     elevatedButtonTheme: ElevatedButtonThemeData(
        //       style: ElevatedButton.styleFrom(
        //         elevation: 0,
        //         primary: kPrimaryColor,
        //         shape: const StadiumBorder(),
        //         maximumSize: const Size(double.infinity, 56),
        //         minimumSize: const Size(double.infinity, 56),
        //       ),
        //     ),
        //     inputDecorationTheme: const InputDecorationTheme(
        //       filled: true,
        //       fillColor: kPrimaryLightColor,
        //       iconColor: kPrimaryColor,
        //       prefixIconColor: kPrimaryColor,
        //       contentPadding: EdgeInsets.symmetric(
        //           horizontal: defaultPadding, vertical: defaultPadding),
        //       border: OutlineInputBorder(
        //         borderRadius: BorderRadius.all(Radius.circular(30)),
        //         borderSide: BorderSide.none,
        //       ),
        //     )),
      home: showHome?splash():Slideronbordaing()
  //  home: DietScreen(),
        
       
      );
   
  }
}