
import 'package:booksapp/features/home/presentation/views/widgets/similar_books_list_vew.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: Alignment.bottomLeft,
            child: Text('You can also like',style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),)),
            const SizedBox(height: 16,),
            const SimilarFeaturedListBooksView(),
      ],
    );
  }
}
