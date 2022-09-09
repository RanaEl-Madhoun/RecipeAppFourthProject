import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:recipes_app/Basics/AppRouter.dart';
import 'package:recipes_app/Provider/RecipeProvider.dart';
import 'package:recipes_app/UI/Screens/DietScreen.dart';
import 'package:recipes_app/UI/Screens/HomeScreen.dart';

import '../Widgets/Analyzedrecipe.dart';
import '../Widgets/RecipeNameWidget.dart';

class Vegen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Consumer<RecipeProvider>(
    builder: ((context, value, child) {
     return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          
          child: Column(
            children: [
             
              SizedBox(height: 20,),
           

              Row(
                children: [
                    
                  IconButton(onPressed: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return DietScreen();
                   }));
                  }, icon: Icon(Icons.arrow_back)),
                  SizedBox(width: 40,),
                    Text("Vegen Recipes",style: GoogleFonts.lora(fontWeight: FontWeight.w600,fontSize: 20),),
                ],
              ),
               GridView.builder(
                        shrinkWrap: true,
                          gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisSpacing: 2.0,
                                          mainAxisSpacing: 5.0,
                                          childAspectRatio: .6,
                                          crossAxisCount: 2),
                                  // crossAxisCount: 2,
                                  primary: false,
                        itemCount:value.Vegen.length,
                     
                       itemBuilder: ( (context, index) {
                        if(value.Vegen.length==null){
                          return CircularProgressIndicator ();
                        }
                         return RecipenameWidgt(value.Vegen[index]);
                         
                         
                       }), ),
                   
            ],
          ),
        ),
      ),
     );
   }
   )
   )
   ;
  }

}