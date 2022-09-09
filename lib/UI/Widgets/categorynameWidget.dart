import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:recipes_app/UI/Screens/RecipeNamedScreens.dart';

import '../../Provider/RecipeProvider.dart';
import '../../Themes/MyThemes.dart';

class CategorynameWidget extends StatelessWidget{
  String text;
  String image;

  CategorynameWidget({
    required this.text,
    required this.image,
   
  });

  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

  return Consumer<RecipeProvider>(
    builder: (context, Provider, child) {
      return   InkWell(
      onTap: (() {
      
                    // Provider.getfrenchResponse("French", Provider.French);

       // Provider.getResultResponse(text);
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
return RecipeNameScreen();
        }));
      }),
      child: Container(
        
    
        width: 160,
        height:180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
         color:Colors.white,
          boxShadow: [
                BoxShadow(
                   color: Color.fromARGB(255, 188, 187, 187).withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 7,
            offset: Offset(0, 3), 
                )
               ],
              
        ),
        
        child: Column(
          children: [
            
            SizedBox(height: 22,),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage(image),
              radius: 35,
              ),
            ),
            SizedBox(height: 25,),
            Center(
              child: 
              Container(
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: Text
                        (text,
                        
                        style: GoogleFonts.lora(
                          fontSize: 16,
                         color:Colors.black ,
                          fontWeight: FontWeight.w500),),
                      ),
                    ),
                  ],
                ),
              ),
            ),),
           
          ],
          
        ),
    
      
    ),
    );
    },
   
  );  }
}

