import 'package:booksapp/core/utils/styles.dart';
import 'package:booksapp/features/home/presentation/manager/features_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_error_msg.dart';
import 'custom_book_image.dart';

class FeaturedListBooksView extends StatelessWidget {
  const FeaturedListBooksView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (BuildContext context, state) { 
        if(state is FeaturedBooksSuccess)
        {
          return  SizedBox(
        height: MediaQuery.of(context).size.height * .3,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: state.books.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, index) {
            return   CustomBookImage(
              imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail?? 
              '');
          },
        ),
      );
        }
        else if( state is FeaturedBooksFailure)
        {
          return  CustomErrorMsg(errorMsg: state.errorMsg,);
        }
       return  const Center(child: CircularProgressIndicator());
       },
    
    );
  }
}


