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
import '../Widgets/Analyzedrecipe.dart';

class IngredScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<RecipeProvider>(
      
      
      builder: (context, Provider, child) {

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
                
                
                       Row(children: [
                                
                        Expanded(child: Text(Provider.info!.title!,style: GoogleFonts.lora(fontSize: 20,fontWeight: FontWeight.w500),))
                      ],),
                    
                  
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
                          Text(Provider.info!.readyInMinutes.toString()+"mins",style: TextStyle(fontWeight: FontWeight.w400 ),)
                        ],),
                width: 90.sp,
                height: 90.sp,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 240, 231, 242),),
                       
                       ),
                        SizedBox(width: 28,),
                        Container(
                width: 90.sp,
                height: 90.sp,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 219, 230, 239),),
                       child:  Column(
                      children: [
                        SizedBox(height: 20,), 
                        Container(
                          child: Center(
                            //serving
                            child: Text(Provider.info!.servings.toString(),
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
                        Center(child:Text("Serving",style: TextStyle(fontWeight: FontWeight.w400 )),),
                       
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
                          Text(Provider.info!.dishTypes![0],style: TextStyle(fontWeight: FontWeight.w400 ),)
                        ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  
                    color: Color.fromARGB(255, 220, 239, 214),),
                    
                       
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
           
                   ,
                   
                      GridView.builder(
                      shrinkWrap: true,
                        gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisSpacing: 2.0,
                                        mainAxisSpacing: 5.0,
                                        childAspectRatio: 3.5,
                                        crossAxisCount: 2),
                                // crossAxisCount: 2,
                                primary: false,
                      itemCount:Provider.ingredientslist.length,
                   
                     itemBuilder: ( (context, index) {
                      if(Provider.ingredientslist.length==null){
                        return CircularProgressIndicator ();
                      }
                       return IngredientsWidget(Provider.ingredientslist[index]);
                       
                       
                     }), ),
                 
                    Row(
                    children: [
                      Text("Steps",style: GoogleFonts.lora(fontSize: 20,fontWeight: FontWeight.w500) ,
           
                      ),
           
           
                    ],
                   ),
                  
                  ListView.builder(
                  shrinkWrap: true,
                   itemCount:Provider.sps.length,
           
                  itemBuilder: ( (context, index) {

         
                       return Analyzedrecipe(Provider.sps[index]);
               
                    
                  })
                  ),
                 
                 ],
               ),
           ),
         ),
        );
        }),

      );
        
      },
      
      
    );
  }
  

}