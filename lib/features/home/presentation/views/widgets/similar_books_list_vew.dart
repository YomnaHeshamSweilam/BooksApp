import 'package:flutter/material.dart';

import 'custom_book_image.dart';

class SimilarFeaturedListBooksView extends StatelessWidget {
  const SimilarFeaturedListBooksView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, index) {
          return  CustomBookImage(imageUrl: 'https://images.ctfassets.net/usf1vwtuqyxm/2DCs73x6P8seNobQ9zBSbO/1a5dfd6ed5fc0ed9545370470fc3d74c/English_Harry_Potter_1_Epub_9781781100219.jpg?w=914&q=70&fm=webp',);
        },
      ),
    );
  }
}
