import 'package:booksapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'book_actions.dart';
import 'book_rating.dart';
import 'custom_book_details_appBar.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .17),
          child:  const CustomBookImage(imageUrl: 'https://images.ctfassets.net/usf1vwtuqyxm/2DCs73x6P8seNobQ9zBSbO/1a5dfd6ed5fc0ed9545370470fc3d74c/English_Harry_Potter_1_Epub_9781781100219.jpg?w=914&q=70&fm=webp',),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          'The Jungle Book',
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.normal),
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
            opacity: .7,
            child: Text('Rudyard Kipling',
                style: Styles.textStyle18.copyWith(
                    fontStyle: FontStyle.italic, fontWeight: FontWeight.w500))),
        const SizedBox(
          height: 18,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        const BookAction(),
      ],
    );
  }
}
