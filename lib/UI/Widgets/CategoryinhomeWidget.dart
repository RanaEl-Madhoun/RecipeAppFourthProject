import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:recipes_app/Basics/AppRouter.dart';
import 'package:recipes_app/Provider/RecipeProvider.dart';
import 'package:recipes_app/UI/Screens/RecipeNamedScreens.dart';

import '../Screens/FamousCountryScreen.dart';

class CategoreyinHome extends StatelessWidget{
  String? image;
  String?Title;
  String?desc;
  Color?color;
  Widget widget;
  CategoreyinHome({
    required this.image,
    required this.Title,
    required this.desc,
    required this.color,
    required this.widget

  
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return   Consumer<RecipeProvider>(
      builder: (context, provider, child) {
        return   Padding(
        padding: const EdgeInsets.all(8.0),
    //       child: Container(
    //         child: Image(image: AssetImage('assete/images/photo1662205681.jpeg'),fit: BoxFit.fitHeight,),
    //                     width: 240,
    //                     height: 450,
    //                     decoration: BoxDecoration(
    //                       color: Colors.grey,
    //                       borderRadius: BorderRadius.circular(15)
    // ),
    //              ),
      //     child:     ClipRRect(
      //       //  width: 240,
      //       //            height: 450,
      // borderRadius: BorderRadius.circular(10.0),
      child:  Center(
          child: InkWell(
            onTap: (){
          //   provider.getfrenchResponse("French", provider.French);
              AppRouter.NavigateWithReplacemtnToWidget(widget);
            },
            child: Container(
          width: 240,
                              height: 450,
                              decoration: BoxDecoration(
                                color: color,
                                borderRadius: BorderRadius.circular(15)
                ),
              child: Stack(
                children: <Widget>[
                  Container(width: 500,
                    height: 300,
                    alignment: Alignment(0,-.5),
                    child: Image.asset(
                   image!,
                      // height: 250,
                      // width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                      
                  ),
                  Container(
                      alignment: Alignment(-.6,.4),
                      child: Text(
                       Title!,
                        style: GoogleFonts.raleway(color: Color.fromARGB(255, 19, 18, 18), fontWeight: FontWeight.bold, fontSize: 20.0),
                      )),
                       Container(
                      alignment: Alignment(-.7,.8),
                      child: Text(
                        desc!,
                        style: GoogleFonts.raleway(color: Color.fromARGB(255, 39, 37, 37),fontWeight: FontWeight.w300,  fontSize: 14.0),
                      )),
                ],
              ),
            ),
          ),
          
          
        ),
      );
      },
     
    );
  }

}