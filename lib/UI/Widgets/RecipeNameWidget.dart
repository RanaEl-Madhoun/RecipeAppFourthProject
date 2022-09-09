import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:recipes_app/Basics/AppRouter.dart';
import 'package:recipes_app/Data/RecipeInformation.dart';
import 'package:recipes_app/Helper/FireStoreHelper.dart';
import 'package:recipes_app/Helper/Recipe.dart';
import 'package:recipes_app/Provider/FireStoreProvider.dart';
import 'package:recipes_app/Provider/RecipeProvider.dart';
import 'package:recipes_app/UI/Screens/IngredScreen.dart';
import 'package:recipes_app/UI/Screens/streem.dart';
import 'package:recipes_app/models/Likedrecipe.dart';

import '../../Data/cuisionRecipes.dart';
import '../Screens/LikedScreen.dart';

class RecipenameWidgt extends StatelessWidget{
 
  Results results;
  RecipenameWidgt(this.results);
  @override
  Widget build(BuildContext context) {

   return  Consumer2<RecipeProvider,FireStoreProvider>(
      
      builder: (context, Provider, FireStoreProvider,child) {
    
          return InkWell(
    onTap: ()async{
      await Provider.getAnalyzed(results.id!);
      await Provider.getRecipeIngredients(results.id!);
      await Provider.getInfo(results.id!);
   await FireStoreProvider.addLike(results);
 


      //Provider.ingredientslist=[];
     
     // log(Provider.ingredientslist.length.toString());
      
      Navigator.of(context).push(MaterialPageRoute(builder: (context){        
     return IngredScreen();
        

      }
      ));
    },
    onDoubleTap: (() {
      AppRouter.NavigateToWidget(LikedScreen());
    }),
    
     child: Container(
      padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
     
       width: 190,
        height:170,
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
      //    Row(
      //       children: [
      //             Spacer(),
      //         IconButton(onPressed: (){
      //           log("you liked it");
           
      //  log(FireStoreProvider.liked.length.toString());
      //  log(FirestoreHelper.firestoreHelper.uid);
      //  FireStoreProvider.isLiked=results.isLiked;
       
      //   FireStoreProvider.addLike(results);
      
      //        //   results.isLiked=true;
      //         // AppRouter.NavigateToWidget(streem());
      //  //  Provider.of<FireStoreProvider>(context,listen:false);
      //         }, icon:Icon (Icons.favorite,
      //      //   color: FireStoreProvider.isLiked??Colors.red:Colors.grey)
      //         ),
      //      ) 
      //       ],
      //     ),
          

         Center(child: 
          Container(
            width: 150,height: 100,child:Image(image: NetworkImage(results.image!),fit: BoxFit.cover,),
            decoration: BoxDecoration(
               boxShadow: [
                BoxShadow(
                   color: Color.fromARGB(255, 233, 231, 231).withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 7,
            offset: Offset(0, 3), 
                )
               ]
            ) ,),
          //(backgroundImage:NetworkImage(results.image!) ,),
         
          
          
   
   
          
          ),
          SizedBox(height: 30,),
          Row(
            children: [
              Expanded(child: Text(results.title!,style: GoogleFonts.lora()
          ,)
          ),
         
            ],
          ),
           SizedBox(height: 5,),
       
         
       ],
     )
     ),
   );

      });
    // TODO: implement build
 

  }

}