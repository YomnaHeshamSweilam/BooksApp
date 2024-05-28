

import 'package:booksapp/core/utils/styles.dart';
import 'package:booksapp/features/home/presentation/views/widgets/book_actions.dart';
import 'package:booksapp/features/home/presentation/views/widgets/book_rating.dart';
import 'package:booksapp/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:booksapp/features/home/presentation/views/widgets/similar_books_list_vew.dart';
import 'package:flutter/material.dart';
import 'custom_book_details_appBar.dart';

class BookViewBody extends StatelessWidget{
  const BookViewBody({super.key});


  @override
  
  Widget build(BuildContext context) {
     var width = MediaQuery.of(context).size.width;
     return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
     padding: const EdgeInsets.symmetric(horizontal: 30),
     child: Column(
       children:  [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width* .17 ),
            child: const CustomBookImage(),
          ),
          const SizedBox(height: 43,),
           Text('The Jungle Book', style: Styles.textStyle30.copyWith(fontWeight: FontWeight.normal),),
           const SizedBox(height: 6,),
           Opacity(
            opacity: .7,
            child: Text('Rudyard Kipling', style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic,fontWeight: FontWeight.w500))),
           const SizedBox(height: 18,),
          const BookRating(mainAxisAlignment: MainAxisAlignment.center,),
          const SizedBox(height: 37,),
          const BookAction(),
          const Expanded(child: SizedBox(height: 30,)),
           Align(
            alignment: Alignment.bottomLeft,
            child: Text('You can also like',style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),)),
            const SizedBox(height: 16,),
            const SimilarFeaturedListBooksView(),
             const SizedBox(height: 20,),

       ],
     ),
   )
        )
      ],
     );
   
  }
}

