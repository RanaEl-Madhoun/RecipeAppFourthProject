import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:recipes_app/onBording/Page2.dart';
import 'package:recipes_app/onBording/Page3.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../Login/login_screen.dart';

import 'Page1.dart';

class Slideronbordaing extends StatefulWidget {
  @override
  State<Slideronbordaing> createState() => _SlideronbordaingState();
}

class _SlideronbordaingState extends State<Slideronbordaing> {
  final controller =PageController();
  bool isLastPage=false;
    @override
    void dispose(){
      controller.dispose();
      super.dispose();
    }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      
   backgroundColor: Color.fromARGB(255,246, 229, 201),

      body:    Column(
        children: [
          SizedBox(
            //770
            height: 770,
            child: PageView(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  isLastPage=index==2;
                });
                
              },
                  children: [
                    onbordpage3(),
                   onbordpage2(),
                
                    onbordpage(),
                     
                  ],
                ),
          ),
        isLastPage?  InkWell(
                onTap: ()async{
                    final prefs=await SharedPreferences.getInstance();
                    prefs.setBool('showHome', true);
                   Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context)=>LoginScreen())
                    );
                    
                  },
                child: Container(  
                  width: 200,
                  decoration:BoxDecoration(
                    color: Colors.amber[50],
                    borderRadius: BorderRadius.circular(30)
                    ) ,

                   padding: const EdgeInsets.all(20),
                   child: Center(child: Text("Lets Cook!",style:TextStyle(fontWeight: FontWeight.w500) ,)),
                  //height: 90,
                  
    
                ),
              )
            
        
        
        
        :SmoothPageIndicator(
                controller: controller,
               count: 3,
              //  effect: WormEffect(
              //   spacing: 16,
              //  // dotColor: Colors.black
              //   ),
                onDotClicked: ((index) => controller.animateToPage(index,duration: Duration(milliseconds: 500), curve: Curves.easeIn))
                ,)


        ],
        
      ),
          
    //   bottomSheet:isLastPage?Container(
    //   color: Color.fromARGB(220, 162, 83, 54),
    //     padding: const EdgeInsets.symmetric(horizontal: 4),
    //     height: 90,
    //     child: Padding(
    //       padding: const EdgeInsets.all(10.0),
    //       child: Row(
    //         children: [
    //           Spacer(),
    //           InkWell(
    //             onTap: ()async{
    //                 final prefs=await SharedPreferences.getInstance();
    //                 prefs.setBool('showHome', true);
    //                Navigator.of(context).pushReplacement(
    //                 MaterialPageRoute(builder: (context)=>LoginScreen())
    //                 );
                    
    //               },
    //             child: Container(

    //                padding: const EdgeInsets.all(20),
    //                child: Text("Get Started"),
    //               //height: 90,
                  
    
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   )
    // :   Container(
    //      color: Color.fromARGB(220, 162, 83, 54),
    //     padding: const EdgeInsets.symmetric(horizontal: 4),
    //     height: 90,
    //     child: Padding(
    //       padding: const EdgeInsets.all(5.0),
    //       child: Row(
    //         children: [
    //           Spacer(),
    //         Center(
    //           child:SmoothPageIndicator(
    //             controller: controller,
    //            count: 3,
    //           //  effect: WormEffect(
    //           //   spacing: 16,
    //           //  // dotColor: Colors.black
    //           //   ),
    //             onDotClicked: ((index) => controller.animateToPage(index,duration: Duration(milliseconds: 500), curve: Curves.easeIn))
    //             ,)

    //         ),
    //         //Spacer(),
    //         // ElevatedButton(onPressed: (){
    //         //   controller.nextPage(duration: Duration(milliseconds: 500), 
    //         //   curve: Curves.easeInOut);
    //         // }, child: Text("Next"))
    //       ],),
    //     ),
    //   ),
     
    );

  }
}
void main(List<String> args) {
  runApp(MaterialApp(home: Slideronbordaing(),));
}