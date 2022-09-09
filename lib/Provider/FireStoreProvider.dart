import 'dart:developer';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:recipes_app/Data/Ingredients.dart';
import 'package:recipes_app/Data/cuisionRecipes.dart';
import 'package:recipes_app/Helper/FireStoreHelper.dart';
import 'package:recipes_app/models/Likedrecipe.dart';

import '../Data/RecipeInformation.dart';
import '../Helper/Recipe.dart';

class FireStoreProvider extends ChangeNotifier{
  FireStoreProvider(){
    putliked();
    
  }
  List<LikedRecipe>liked=[];
  List<Info> ing=[];
  bool ?isLiked;
  // addNewLiked(Results results)async{
  //   //LikedRecipe likedRecipe=await FirestoreHelper.firestoreHelper.addLikedRecipe(LikedRecipe(id: results.id, name: results.title));
  //  liked.add(likedRecipe);
  //  notifyListeners();
  // }
  // getLiked()async{

  //   List<LikedRecipe>likedfromhelper= await FirestoreHelper.firestoreHelper.getAllLiked();
  //   liked.addAll(likedfromhelper);
  //  notifyListeners();
  // //  likedfromhelper.map((e) => {liked.add(e)});
  // // log(liked.length.toString());
  // }
  addLike(Results result)async{
   
    //  isLiked=true;
      await FirestoreHelper.firestoreHelper.addNewuserlike(LikedRecipe(id: result.id, name: result.title));
    notifyListeners();
    
   
    
  }
  putliked()async{
    List<LikedRecipe>likedfromhelper= await FirestoreHelper.firestoreHelper.getAllLiked();
    liked.addAll(likedfromhelper);
   notifyListeners();
   likedfromhelper.map((e) async{
  Info info=await RecipeHelper.recipeHelper.getInfo(e.id!);
   ing.add(info);
   notifyListeners();

   }).toList();
   notifyListeners();

  }
  
  
}
