import 'package:booksapp/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:booksapp/features/home/presentation/views/widgets/customBestSellerItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_error_msg.dart';

class NewestListView extends StatelessWidget {
  const NewestListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {

        if(state is NewestBooksSucess)
        {
             return ListView.builder(
                       padding: EdgeInsets.zero,
                      //  physics:  const NeverScrollableScrollPhysics(),
                       itemCount: state.books.length,
                       itemBuilder: ((context, index) =>  Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: FeaturedNewestItem(bookModel: state.books[index],),
                )));
        }
        else if( state is NewestBooksFailure)
        {
          return  CustomErrorMsg(errorMsg: state.errorMsg,);
        }
       return  const Center(child: CircularProgressIndicator());
   
      },
    );
  }
}
