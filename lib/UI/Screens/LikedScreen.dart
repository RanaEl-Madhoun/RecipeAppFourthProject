import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipes_app/Basics/AppRouter.dart';
import 'package:recipes_app/UI/Screens/HomeScreen.dart';
import 'package:recipes_app/UI/Widgets/Likedwidget.dart';

import '../../Provider/FireStoreProvider.dart';

class LikedScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
return Consumer<FireStoreProvider>(
  builder: (BuildContext context, pro, Widget? child) { 
    return Scaffold(
  
    body: (pro.liked.length==null)?CircularProgressIndicator()
   
     :Padding(
       padding: const EdgeInsets.all(20.0),
      
         child: SingleChildScrollView(
           child: Column(
                
             children: [
              SizedBox(height: 30,),
              Row(
              
                children: [
                
                  IconButton(onPressed: (){
                
                    AppRouter.NavigateWithReplacemtnToWidget(HomeScreen());
                  }, icon:Icon(Icons.arrow_back) ),
                  SizedBox(width: 10,),
                  Text("Favourites",style: TextStyle(fontWeight:FontWeight.w500,fontSize: 20 ),)
                
                ],
              ),
               ListView.builder(
                shrinkWrap: true,
                itemCount: pro.liked.length,
             
                            itemBuilder: ( (context, index) {
                
                   
                                 return likedWid(likedRecipe: pro.liked[index]);
                         
                              
                            })
             ),
             ],
           ),
         ),
       
     )
    );
   },
    
);
  }

}