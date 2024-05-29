import 'package:booksapp/core/utils/styles.dart';
import 'package:booksapp/features/search/presentation/view/widgets/search_result.dart';
import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class SearchViewBody extends StatelessWidget{
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
   return  SafeArea(
    child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(height: 10,),
           CustomTextField(),
            SizedBox(height: 16,),
            Text('Search Result' , style: Styles.titleMeduim),
            SizedBox(height: 16,),
           Expanded(child: SearchResultView())

        ]),
      ),
    ),
   );
  }

}

