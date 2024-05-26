import 'package:booksapp/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget{
  const CustomBookImage({super.key});
  
  @override
  Widget build(BuildContext context) {
    
   return Padding(
     padding: const EdgeInsets.symmetric(horizontal: 10),
     child: AspectRatio(
       aspectRatio: 2.8 /4,
       child: Container(
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        image: const DecorationImage(
          image: AssetImage(AssetsData.image),
          fit:BoxFit.fill )),
       ),
     ),
   );
  }

}