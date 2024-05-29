

import 'package:booksapp/features/home/presentation/views/widgets/similar_books_list.dart';
import 'package:flutter/material.dart';
import 'book_details_section.dart';

class BookViewBody extends StatelessWidget{
  const BookViewBody({super.key});


  @override
  
  Widget build(BuildContext context) {
    
     return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
     padding: const EdgeInsets.symmetric(horizontal: 30),
     child: Column(
       children: const [
         BookDetailsSection(),
         Expanded(child: SizedBox(height: 30,)),
         SimilarBooksSection(),
         SizedBox(height: 20,),

       ],
     ),
   )
        )
      ],
     );
   
  }
}



