import 'package:flutter/material.dart';

class BookViewBody extends StatelessWidget{
  const BookViewBody({super.key});


  @override
  Widget build(BuildContext context) {
   return Column(
     children: const [
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 30),
          child: CustomBookDetailsAppBar(),
        ),
     ],
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