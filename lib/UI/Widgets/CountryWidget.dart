import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CountryWidget extends StatelessWidget{
  String countryname;
  String image;
  List<Color> colors;
  CountryWidget(
    {
  required this.countryname,
  required this.colors,
  required this.image
});
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Container(
    width: double.infinity,
    height: 144,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors:colors
        

        ),
        borderRadius: BorderRadius.circular(15)
    ),
    child: Row(
      children: [
          Image(image: AssetImage(image),),
          SizedBox(width: 40,)   ,
          Text(countryname,style: GoogleFonts.openSans(fontSize: 18,
          fontWeight: FontWeight.w600),)     
      ],
    ),

   );


}
}