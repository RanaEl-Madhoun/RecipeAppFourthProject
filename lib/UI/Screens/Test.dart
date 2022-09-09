import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:recipes_app/Helper/Recipe.dart';
import 'package:recipes_app/Provider/RecipeProvider.dart';
import 'package:recipes_app/UI/Widgets/IngredientsWidget.dart';
import 'package:recipes_app/UI/Widgets/RecipeNameWidget.dart';

import '../../Data/Ingredients.dart';
import '../../Data/cuisionRecipes.dart';

class Test extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    

      return ScreenUtilInit(
        builder: ((context, child) {
          return Scaffold(
           //  appBar: AppBar(),
         
         body: Padding(
           padding: const EdgeInsets.all(20.0),
           child: SingleChildScrollView(
             child: Column(
                     
               children: [
                SizedBox(height: 30.sp,),
              
              Container(
                    height: 30.sp,
                    child: Row(children: [
                              
                      Text("Winter Kimchi",style: GoogleFonts.lora(fontSize: 20,fontWeight: FontWeight.w500),)
                    ],),
                  ),
                
                SizedBox(height: 20.sp,),
                 Row(
                   children: [
                     Container(
                      child: Column(
                        children: [
                          SizedBox(height: 20,),
                        Center(child: Icon((Icons.access_time_sharp),size: 40,),
                        ),
                        SizedBox(height: 10,),
                        //prepertime
                        Text("10 "+"mins",style: TextStyle(fontWeight: FontWeight.w400 ),)
                      ],),
              width: 90.sp,
              height: 90.sp,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 236, 209, 241),),
                     
                     ),
                      SizedBox(width: 28,),
                      Container(
              width: 90.sp,
              height: 90.sp,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 132, 180, 217),),
                     child:  Column(
                    children: [
                      SizedBox(height: 20,), 
                      Container(
                        child: Center(
                          //serving
                          child: Text("2",
                          style: TextStyle(fontWeight: FontWeight.w500),)),
                        width: 40,
                        height: 40,
                    
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 2
                          ),
        
                          shape: BoxShape.circle),
                      ),
                      SizedBox(height: 10,),
                      Center(child:Text("Serving",style: TextStyle(fontWeight: FontWeight.w400 )),)
                    ],
                  ),
                     ),


                     Spacer(),






                      Container(
              width: 90.sp,
              height: 90.sp,
              child: Column(
                children: [
                          SizedBox(height: 20.sp,),
                        Center(child: Icon((Icons.lunch_dining_sharp),size: 40,),
                        ),
                        SizedBox(height: 10.sp,),
                        //prepertime
                        Text("10 "+"mins",style: TextStyle(fontWeight: FontWeight.w400 ),)
                      ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                
                  color: Color.fromARGB(255, 153, 217, 132),),
                  
                     
                     )
                   ],
                 ),
                  SizedBox(height: 20.sp,),
                 Row(
                  children: [
                    Text("Ingredients",style: GoogleFonts.lora(fontSize: 20,fontWeight: FontWeight.w500) ,

                    ),


                  ],
                 )

                 
                 
                //  SizedBox(
                //   width: 300,
                //   height: 300,
                //    child: ListView.builder(
                   
                //     itemCount:Provider.ingredientslist.length,
                 
                //    itemBuilder: ( (context, index) {
                //     if(Provider.ingredientslist.length==null){
                //       return CircularProgressIndicator ();
                //     }
                //      return IngredientsWidget(Provider.ingredientslist[index]);
                     
                     
                //    })),
                //  ),
               ],
             ),
           ),
         ),
        );
        }),

      );
     
  }
  

}
void main(List<String> args) {
  runApp(MaterialApp(home: Test(),));
}