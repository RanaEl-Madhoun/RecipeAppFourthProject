import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:recipes_app/Basics/AppRouter.dart';
import 'package:recipes_app/Provider/FireStoreProvider.dart';
import 'package:recipes_app/UI/Screens/RecipeNamedScreens.dart';
import 'package:recipes_app/models/Likedrecipe.dart';

import '../../Provider/RecipeProvider.dart';
import '../../Themes/MyThemes.dart';
import '../Screens/IngredScreen.dart';
import '../Screens/streem.dart';

class likedWid extends StatelessWidget{
  LikedRecipe likedRecipe;
  likedWid({
    required this.likedRecipe,
    
  });

  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

  return Consumer2<FireStoreProvider,RecipeProvider>(
    builder: (context, provider,  Provider,child) {
      return   InkWell(
      onTap: (()async {
        await Provider.getAnalyzed(likedRecipe.id!);
      await Provider.getRecipeIngredients(likedRecipe.id!);
      await Provider.getInfo(likedRecipe.id!);
        //log(Provider.ing.length.toString());
       AppRouter.NavigateToWidget(IngredScreen());
     
                    // Provider.getfrenchResponse("French", Provider.French);

       // Provider.getResultResponse(text);
//         Navigator.of(context).push(MaterialPageRoute(builder: (context){
// return Streem();
//         })
//         );
      }),
      child: Padding(
        padding: const EdgeInsets.only(bottom:35.0),
        child: Container(
          
    
          width: 100,
          height:80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
           color:Color.fromARGB(255, 255, 252, 252),
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
              
             
              
              SizedBox(height: 25,),
              Center(
                child: 
                Container(
                child: Center(
                  child: Row(
                    children: [
                      IconButton(onPressed: (){
                    //    provider.deleteLiked(likedRecipe);
                      }, icon: Icon(Icons.delete)),
                      Expanded(
                        child: Center(
                          child: Text
                          (likedRecipe.name!,
                          
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
      ),
    );
    },
   
  );  }
}

