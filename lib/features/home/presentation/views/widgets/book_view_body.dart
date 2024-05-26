

import 'package:booksapp/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookViewBody extends StatelessWidget{
  const BookViewBody({super.key});


  @override
  
  Widget build(BuildContext context) {
     var width = MediaQuery.of(context).size.width;
   return Padding(
     padding: const EdgeInsets.symmetric(horizontal: 30),
     child: Column(
       children:  [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width* .17 ),
            child: const CustomBookImage(),
          )
       ],
     ),
   );
  
  }
}

class CustomBookDetailsAppBar extends StatelessWidget{
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: (){}, icon: const Icon(Icons.close)),
        IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart_outlined))
      ]
    );
  }

}