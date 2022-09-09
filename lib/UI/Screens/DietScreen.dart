import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:recipes_app/Provider/FireStoreProvider.dart';
import 'package:recipes_app/Provider/RecipeProvider.dart';
import 'package:recipes_app/UI/Screens/HomeScreen.dart';
import 'package:recipes_app/UI/Screens/KetoScreen.dart';
import 'package:recipes_app/UI/Screens/vegenScreen.dart';
import 'package:recipes_app/UI/Screens/vegtrn.dart';

import '../Widgets/DietcatWidget.dart';

class DietScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Consumer2<FireStoreProvider,RecipeProvider>(

     builder: (BuildContext context, value, value2,Widget? child) { 
      return    ScreenUtilInit(
      builder: (BuildContext context, Widget? child) {  
        return Scaffold(
          body: SingleChildScrollView(
          child: Container(
            height: 850,
          //  width: double.infinity,
          // height: double.infinity,
            decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assete/images/photo1662582510-removebg-preview.png"),
            colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.8), BlendMode.modulate,),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top:50.0),
          child: Container(
            alignment: Alignment.center,
            height: 100.sp,
            //width: 400,
            decoration: BoxDecoration(
               color: Colors.white
            
              ,borderRadius:BorderRadius.circular(15)),
            margin: EdgeInsets.all(30),
            padding: EdgeInsets.all(25),
            child: Column(
            
              children: [
                Row(
                  children: [
                    SizedBox(width: 10,),
                    IconButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return HomeScreen();
                        }
                        )
                        );
                    }, icon: Icon(Icons.arrow_back)),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Recipes for your\nDiet",style: GoogleFonts.lora(fontSize: 30),
                    ),

                  ],
                ),
                SizedBox(height: 20.sp,),
                DietcatRecipeWidget(image: 'assete/images/vegen.png',cat:'Vegen\nRecipes',imwidth: 60.sp,widget: Vegen(),),
                 SizedBox(height: 20.sp,),
                DietcatRecipeWidget(image: 'assete/images/veganesm-removebg-preview.png',cat:'Vegetairan\nRecipes',imwidth: 33.sp,widget: Vegentar(),),
                 SizedBox(height: 20.sp,),
               DietcatRecipeWidget(image: 'assete/images/Ketodiet.png',cat:'Ketogenic\nRecipes',imwidth: 47.sp,widget: Keto(),),
                
               
              ],
            ),
      
            ),
        )
          )
         ) );
      },
   
     );
      },
   
   );
  }

}
void main(){
  runApp(MaterialApp(home:DietScreen()));
}