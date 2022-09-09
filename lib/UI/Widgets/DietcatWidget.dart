import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipes_app/Basics/AppRouter.dart';
import 'package:recipes_app/UI/Screens/vegtrn.dart';

import 'RecipeNameWidget.dart';

class DietcatRecipeWidget extends StatelessWidget{
  String?image;
  String ?cat;
  double? imwidth;
  Widget ?widget;
  DietcatRecipeWidget({required this .image,required this.cat,this.imwidth,required this.widget});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return InkWell(
    onTap: (){
      AppRouter.NavigateWithReplacemtnToWidget(widget!);
    },
     child: Container(
            width: 300,
            height: 150,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 219, 251, 155),
                  Color.fromARGB(255, 187, 249, 122),
                Color.fromARGB(255, 136, 223, 139),
                Color.fromARGB(255, 85, 194, 87),
                  
   
                
              ]),
          
              borderRadius: BorderRadius.circular(20)
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 10,),
                    Text(cat!,style: GoogleFonts.lora(
                      color: Color.fromARGB(255, 37, 37, 37),fontWeight: FontWeight.bold,
                      fontSize: 20),
   
                    ),
                     SizedBox(width: imwidth,),
                     Center(
                      child: Container(
                        width: 130,
                        height: 140,
                        child: Image(image: AssetImage(image!),fit: BoxFit.cover,)),
                    ),
                    ]),
                  // 
                 
                   
                  ],
                )
      ),
   );
   

  }

}
void main(List<String> args) {
  //runApp(MaterialApp(home: DietcatRecipe(),));
}