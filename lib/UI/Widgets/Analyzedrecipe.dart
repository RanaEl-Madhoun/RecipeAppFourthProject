import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipes_app/Data/Ingredients.dart';

import '../../Data/Analyzedrecipe.dart';

class Analyzedrecipe extends StatelessWidget{
  
  Steps stp;
  Analyzedrecipe(this.stp);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  
   
     return   Expanded(
          
            child: Column(
                      
         crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               
              
                        // Row(
        
                        //  children: [
                         
                            
                        //    Text(stp.number.toString(),style: GoogleFonts.ubuntu(color: Colors.grey),),
                        //         SizedBox(width: 7,),
                              
                          
                        
                        //  ],
                
                        // ),
                       
                           Padding(
                        padding: const EdgeInsets.only(bottom: 11.0),
                       child:  Row(
                         children: [
                          Container(
    child: Center(child: 
    Text(stp.number.toString())
    ),
    width: 25,
    height: 25,
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 225, 209, 203),
      shape: BoxShape.circle
    ),
   ),
   SizedBox(width: 9,),
        
                           Expanded(
                            child: 
                            Text(stp.step!,style:GoogleFonts.ubuntu(
                              color: Color.fromARGB(255, 95, 94, 94)
                              )
                              )
                              ),
                         ],
                       )
                      ),
                      ],
                    ),
          
      
    );
         
  
    
  }

}
