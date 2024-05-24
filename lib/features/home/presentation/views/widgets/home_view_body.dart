import 'package:booksapp/core/utils/styles.dart';
import 'package:booksapp/features/home/presentation/views/widgets/custom_app_bar_view.dart';
import 'package:flutter/material.dart';


import 'featured_list_books.dart';

class HomeViewBody extends StatelessWidget{
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
   
   return Padding(
     padding: const EdgeInsets.symmetric(horizontal: 24),
     child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
       children: const [
         CustomAppBar(),
        FeaturedListBooksView(),
        SizedBox(height: 50,),
        Text('Best Seller' , style: Styles.titleMeduim),
         
   
       ],
     ),
   );
  }
}

