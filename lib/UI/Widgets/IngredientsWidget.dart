import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipes_app/Data/Ingredients.dart';

class IngredientsWidget extends StatelessWidget{
  
  Ingredients ingredients;
  IngredientsWidget(this.ingredients);
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
   
    return Row(
      children: [
        Expanded(
          child: Container(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(

                 children: [
                 
                    
                   Text(ingredients.amount!.metric!.value!.toString(),style: GoogleFonts.ubuntu(color: Colors.grey),),
                        SizedBox(width: 7,),
                        Text(ingredients.amount!.metric!.unit.toString(),style:GoogleFonts.ubuntu(color: Colors.grey),),  
          SizedBox(width: 7,),
                  
                
                 ],
        
                ),
               
                  
                     Padding(
                       padding: const EdgeInsets.only(bottom:8.0),
                      
                         child:   Expanded(
                          flex: 8,
                              child: Column(

                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    ingredients.name!,
                                    style:GoogleFonts.ubuntu(
                                      color: Color.fromARGB(255, 132, 132, 132))),
                                ],
                              ),
                           
                      


                       ),
                     ),
                  
              ],
            ),
           
          ),
        ),
      ],
  
    );
  }

}