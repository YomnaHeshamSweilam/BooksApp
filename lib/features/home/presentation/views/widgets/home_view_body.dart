
import 'package:booksapp/core/utils/styles.dart';
import 'package:booksapp/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:booksapp/features/home/presentation/views/widgets/custom_app_bar_view.dart';
import 'package:flutter/material.dart';


import 'customBestSellerItem.dart';
import 'featured_list_books.dart';

class HomeViewBody extends StatelessWidget{
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
       children: const [
         Padding(
           padding: EdgeInsets.symmetric(horizontal: 30),
           child: CustomAppBar(),
         ),
        FeaturedListBooksView(),
        SizedBox(height: 50,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Text('Best Seller' , style: Styles.titleMeduim),
        ),
        SizedBox(height: 20,),
       ],
     ), ),
     const SliverFillRemaining(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: BestSellerListView(),
      ),
     )
      ],
    );
   
   return Padding(
     padding: const EdgeInsets.symmetric(horizontal: 24),
     child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
       children: const [
         CustomAppBar(),
        FeaturedListBooksView(),
        SizedBox(height: 50,),
        Text('Best Seller' , style: Styles.titleMeduim),
        SizedBox(height: 20,),
        BestSellerListView(),
        
       ],
     ),
   );
  }
}





