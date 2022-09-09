import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:recipes_app/Basics/AppRouter.dart';
import 'package:recipes_app/Provider/AuthProvider.dart';
import 'package:recipes_app/Provider/FireStoreProvider.dart';

import 'package:recipes_app/Themes/ChangeThemswitcherWidget.dart';
import 'package:recipes_app/Themes/MyThemes.dart';
import 'package:recipes_app/UI/Screens/DietScreen.dart';
import 'package:recipes_app/UI/Screens/RecipeNamedScreens.dart';
import 'package:recipes_app/UI/Screens/vegtrn.dart';

import 'package:recipes_app/UI/Widgets/Searchbar.dart';

import '../../Provider/RecipeProvider.dart';
import '../Widgets/CategoryinhomeWidget.dart';
import '../Widgets/categorynameWidget.dart';
import 'LikedScreen.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer3<RecipeProvider,AuthProvider,FireStoreProvider>(
      builder: ((context, ProvideR,AuthProvider,FireStoreProvider, x) {
      return Scaffold(
       key: ProvideR.Scaffoldkey,
  
    drawer:  Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            SizedBox(height: 50,),

            // const DrawerHeader(
            //   decoration: BoxDecoration(
            //     color: Colors.blue,
            //   ),
            //   //child: Text('Drawer Header'),
            // ),
            ListTile(
              title: Row(
                children: [
                  Icon(Icons.logout),
                  SizedBox(width: 5,),
                  const Text('log out'),
                ],
              ),
              onTap: () {
                AuthProvider.signOut();

                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(Icons.star),
                  SizedBox(width: 10,),
                  const Text('Favourites'),
                ],
              ),
              onTap: () {
                
               // FireStoreProvider.putliked();
              //  Navigator.of(context).push(MaterialPageRoute(builder: (context){
              //   return LikedScreen();
              //  }));
             AppRouter.NavigateToWidget(LikedScreen());
             //AppRouter.PopRouter();
                // Update the state of the app
                // ...
                // Then close the drawer
              // Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
   
   body: ScreenUtilInit(builder: (BuildContext context, Widget? child) {  
    return  SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            
            children: [
          //    SizedBox(height: 10.sp,)
              Row(children: [
      
              IconButton(onPressed: (){
              ProvideR.Scaffoldkey.currentState!.openDrawer();
      
              }, icon:Icon (Icons.menu_rounded)),
               Spacer(),
               changeThemeButtonWidget()
                // Container(
                //   padding: EdgeInsets.all(5),
                //   child: Icon(Icons.notifications),
                //   decoration: BoxDecoration(
                //      color: Color.fromARGB(255, 201, 199, 199),
                //     borderRadius: BorderRadius.circular(15)
                //     ),
                 
                //   )
              ],),
              SizedBox(height: 15,),
              Row(
                children: [
                //   Text("Delicious",style: TextStyle(
                // //    color: Color.fromARGB(255, 96, 96, 96)
                //     ),),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text("Enjoy cooking easy \nrecipes",style:GoogleFonts.lora(fontSize: 20,fontWeight: FontWeight.w500)
                    ),
                ],
              ),
              SizedBox(height: 20.sp,),
             Searchbar(),
              SizedBox(height: 24.sp,),
             Row(children: [Text("Category",style: GoogleFonts.lora(fontSize: 20),)],),
              SizedBox(height: 24.sp,),
             SingleChildScrollView(
              scrollDirection:Axis.horizontal,
               child: Row(
                 children: [
                 CategoreyinHome(
                  image: "assete/images/home2.png",
                  Title: 'Famous world \ncuision',
                  desc: 'Find easy and dilious\n recipes from all\n over the world',
                  widget: RecipeNameScreen(),
                  color: Color.fromARGB(255,214,237,227),),
CategoreyinHome(image:
 "assete/images/veghome.png",Title:
  'Diet\nRecipes',
  desc: 'Find easy and dilious\n recipes from vegne,\nvegetariann and more',
  widget: DietScreen(),
  color: Color.fromARGB(255,80,158,142),),

                //    CategoreyinHome(),
                //  CategoreyinHome(),
                 ],
               ),
             )
         
              ],
              
            
             
           
          ),
        ),
      ),
    );
   },
   ),
   
  );
      

      
    }));
  
  }

}