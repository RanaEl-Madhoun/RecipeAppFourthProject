import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:recipes_app/Basics/AppRouter.dart';
import 'package:recipes_app/Helper/Recipe.dart';
import 'package:recipes_app/Provider/RecipeProvider.dart';
import 'package:recipes_app/UI/Screens/HomeScreen.dart';
import 'package:recipes_app/UI/Widgets/RecipeNameWidget.dart';

import '../../Data/cuisionRecipes.dart';
import '../Widgets/ListView.dart';
import 'americalist.dart';

class RecipeNameScreen extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<RecipeProvider>(
      
      builder: (context, Provider, child) {
       
      return Scaffold(

  
      
       
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
               
                 children: [
                  SizedBox(height:30),
                  Row(children: [
                    IconButton(onPressed: (){
Navigator.of(context).push(MaterialPageRoute(builder: (context){
  return HomeScreen();
}))     ;               }, icon: Icon(Icons.arrow_back))
                  ],),
                 

                   Row(

                     children: [
                       SizedBox(width: 10,),
                      CircleAvatar(backgroundImage: AssetImage('assete/images/lebonon.png'),
                      radius: 14,
                      ),
                      SizedBox(width: 7,),
                       Text("Lebanese",style: GoogleFonts.lora(fontSize: 20,fontWeight: FontWeight.w500),),
                     ],
                   ),
                    SizedBox(height: 20,),
                  SizedBox(
                      height: 296,
                       child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount:Provider.MiddleEst.length,
                       itemBuilder: ( (context, index) {
                        if(Provider.MiddleEst.length==null){
                          return CircularProgressIndicator();
                        }
      
            return RecipenameWidgt(Provider.MiddleEst[index]);
                         
                       })),
      
                     ),
 SizedBox(height:30),
                   Row(
                     children: [
                       SizedBox(width: 10,),
                   CircleAvatar(backgroundImage: AssetImage('assete/images/Flag_of_France.svg.png'),
                      radius: 14,
                      ),
                      SizedBox(width: 7,),
                       Text("French",style: GoogleFonts.lora(fontSize: 20,fontWeight: FontWeight.w500),),
                     ],
                   ),
                    SizedBox(height: 20,),
                      SizedBox(
                      height: 296,
                       child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount:Provider.French.length,
                       itemBuilder: ( (context, index) {
                        if(Provider.French.length==null){
                          return CircularProgressIndicator();
                        }
      
            return RecipenameWidgt(Provider.French[index]);
                         
                       })),
      
                     ),
                     SizedBox(height: 20,),
                       Row(
                     children: [
                       SizedBox(width: 10,),
                     CircleAvatar(backgroundImage: 
                     AssetImage('assete/images/Flag_of_South_Korea.svg.png'),
                      radius: 14,
                      ),
                      SizedBox(width: 7,),
                       Text("Korean",style: GoogleFonts.lora(fontSize: 20,fontWeight: FontWeight.w500),),
                     ],
                   ),
                    SizedBox(height: 20,),
                      SizedBox(
                      height: 296,
                       child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount:Provider.Korean.length,
                       itemBuilder: ( (context, index) {
                        if(Provider.Korean.length==null){
                          return CircularProgressIndicator();
                        }
      
            return RecipenameWidgt(Provider.Korean[index]);
                         
                       })),
      
                     ),
                  
                   SizedBox(height: 20,),
                  
                   SizedBox(height: 20,),
                   Container(
            
              child: Column(
                children: [
                 Row( 
                  children: [
                    SizedBox(width: 10,),
                   CircleAvatar(backgroundImage: 
                   AssetImage('assete/images/amirca.png'),
                      radius: 14,
                      ),
                      SizedBox(width: 7,),
                    Text("American",style: GoogleFonts.lora(fontSize: 20,fontWeight: FontWeight.w500))
                    ],),
                    SizedBox(height: 20,),
                     SizedBox(
                    height: 296,
                     child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount:Provider.American.length,
                     itemBuilder: ( (context, index) {
                      if(Provider.American.length==null){
                        return CircularProgressIndicator();
                      }
           
          return RecipenameWidgt(Provider.American[index]);
             
                       
                     })),
            
                   ),
                   ],),
            ),

                  SizedBox(height:30),

                   Row(
                     children: [
                       SizedBox(width: 10,),
                      CircleAvatar(backgroundImage: 
                      AssetImage('assete/images/1200px-Flag_of_Germany.svg.png'),
                      radius: 14,
                      ),
                      SizedBox(width: 7,),
                       Text("German",style: GoogleFonts.lora(fontSize: 20,fontWeight: FontWeight.w500),),
                     ],
                   ),
                    SizedBox(height: 20,),
                      SizedBox(
                      height: 296,
                       child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount:Provider.German.length,
                       itemBuilder: ( (context, index) {
                        if(Provider.German.length==null){
                          return CircularProgressIndicator();
                        }
      
            return RecipenameWidgt(Provider.German[index]);
                         
                       })),),
 
                     SizedBox(height:30),

                   Row(
                     children: [
                       SizedBox(width: 10,),
                      CircleAvatar(backgroundImage: AssetImage('assete/images/Flag_of_India.svg.webp'),
                      radius: 14,
                      ),
                      SizedBox(width: 7,),
                       Text("Indian",style: GoogleFonts.lora(fontSize: 20,fontWeight: FontWeight.w500),),
                     ],
                   ),
                    SizedBox(height: 20,),
                  SizedBox(
                      height: 296,
                       child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount:Provider.Indian.length,
                       itemBuilder: ( (context, index) {
                        if(Provider.Indian.length==null){
                          return CircularProgressIndicator();
                        }
      
            return RecipenameWidgt(Provider.Indian[index]);
                         
                       })),
      
                     ),
                  
                      
                   // Listviewcountry(Provider.American,"American"),
                 ],
                 
               ),
        ),
      ),

           
      );
        
      },
      
      
    );
  }
  

}