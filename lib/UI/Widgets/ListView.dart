import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipes_app/Data/cuisionRecipes.dart';

import '../../Provider/RecipeProvider.dart';
import 'RecipeNameWidget.dart';

class Listviewcountry extends StatelessWidget{
  List<Results>result;
  String count;
  Listviewcountry(this.result,this.count);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
 return   Consumer<RecipeProvider>(
      
      builder: (context, Provider, child) {
       
   //Provider.getfrenchResponse("French",Provider.French); 
       return Column(
       
         children: [
           SizedBox(
            height: 296,
             child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount:result.length,
             itemBuilder: ( (context, index) {
              if(result.length==null){
                return CircularProgressIndicator();
              }

    return RecipenameWidgt(result[index]);
               
             })),
           ),
         ],
       );
      
             
      },
      
      
    );
  }
  }

