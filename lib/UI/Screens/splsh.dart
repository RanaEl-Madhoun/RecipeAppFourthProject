import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class splashimage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
return ScreenUtilInit(
  builder: (BuildContext context, Widget? child) { 
    return Scaffold(
  
     backgroundColor: Color.fromARGB(255, 235, 209, 201),
  
    body: Column(
  
      children: [

       SizedBox(height: 55.sp,),
  
        Center(
  
          child: Container(
  
           
  
           // width: 200,
  
           // width: MediaQuery.of(context).size.width,
  
            height: 650,
  
            child:  Image(image: AssetImage('assete/images/70a1b7fe-23c8-4732-a122-4777ffae5c21-removebg-preview.png'),),
  
          ),
  
        ),
  
       
  
      ],
  
    )
  
  
  
  );
   },
    
);
  }

}
void main(List<String> args) {
  runApp(MaterialApp(home: splashimage(),));
}