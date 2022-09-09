import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class onbordpage3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return ScreenUtilInit(builder: ((context, child) {
    //  return Scaffold(
    //   backgroundColor: Color.fromARGB(220, 207, 184, 245),
      return Padding(
         padding: const EdgeInsets.all(10.0),
         child: Column(
        
          children: [
              SizedBox(height: 60.sp,),
             Row(
              
              children: [
                SizedBox(width: 20.sp,),
                Text("Enjoy\nCooking",style: GoogleFonts.lora(fontSize: 30,color: Color.fromARGB(255, 43, 42, 42)),),
              ],
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                  SizedBox(width: 20.sp,),
                Text("Let your inner chef\nfree by descovre easy \nand new recipes",style: GoogleFonts.lora(fontSize: 18,color: Color.fromARGB(255, 67, 66, 66)))
              ],
            ),
            Center(
              child: Container(
                height: 450.sp,
                child: Image(image: AssetImage("assete/images/chef-removebg-preview.png")
                )),
            ),
           
            
          ],
         ),
       );
    
   }));
  }

}void main(List<String> args) {
  runApp(MaterialApp(home: onbordpage3(),));
}