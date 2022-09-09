import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:provider/provider.dart';
import 'package:recipes_app/Basics/AppRouter.dart';
import 'package:recipes_app/Data/cuisionRecipes.dart';
import 'package:recipes_app/Helper/Recipe.dart';
import 'package:recipes_app/Provider/RecipeProvider.dart';
import 'package:recipes_app/UI/Screens/IngredScreen.dart';
import 'package:recipes_app/UI/Screens/RecipeNamedScreens.dart';

class Searchbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
 return Consumer<RecipeProvider>(
   builder: (BuildContext context, recipepro, Widget? child) {
    return Container(
    width: double.infinity,
          height: 45,
          decoration: BoxDecoration(
             color: Color.fromARGB(255, 255, 253, 253), 
             borderRadius: BorderRadius.circular(5),
             boxShadow: [
              BoxShadow(
                 color: Color.fromARGB(255, 188, 187, 187).withOpacity(0.5),
          spreadRadius: 1,
          blurRadius: 7,
          offset: Offset(0, 3), 
              )
             ],
            
             ),
             child: Center(
              child: TypeAheadField<Results?>(
                textFieldConfiguration: TextFieldConfiguration(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                //  border: OutlineInputBorder(),
                  hintText: 'Search ',
                ),
              ),
                onSuggestionSelected: (Results?suggestion) async{
                   await recipepro.getAnalyzed(suggestion!.id!);
      await recipepro.getRecipeIngredients(suggestion.id!);
      await recipepro.getInfo(suggestion.id!);

                  AppRouter.NavigateToWidget(IngredScreen());
                  
                },
                noItemsFoundBuilder: (context) {
               return   Container(height:100,child: Center(child: Text("No Results found"),));
                },
                itemBuilder: (context, Results?suggestion) {
                  final result=suggestion!;
                 // recipepro.Search(result.)
                  return ListTile(
                    title: Text(result.title!),
                  );

                },
                suggestionsCallback: (pattern)async {
                return await recipepro.Search(pattern);
              },
               // suggestionsCallback:(Pattern()) recipepro.Search,

              ),
            //   child: TextFormField(
            //     onChanged: ((value1) async{
            //  value1=   value.searchcontroller.text;
            //  log(value1);
            //      //value.Search(value1);
            //  await value.Search(value1);
                  
            //     }),
            //    controller: value.searchcontroller,
            //      decoration: InputDecoration(
            //       prefixIcon: const Icon(Icons.search),
            //       suffixIcon: IconButton(
 
            //         icon: const Icon(Icons.clear),
            //         onPressed: () {
            //           //value.searchcontroller.text='';
            //           log(value.SearchList.length.toString());
            //        },
            //       ),
            //       hintText: 'Search...',
            //       border: InputBorder.none),
            // ),
          ),
              );
     },
   
 );
           
           
 
  }


}