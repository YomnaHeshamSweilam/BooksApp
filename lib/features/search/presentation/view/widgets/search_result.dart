import 'package:booksapp/features/home/presentation/views/widgets/customBestSellerItem.dart';
import 'package:flutter/material.dart';

class SearchResultView extends StatelessWidget {
  const SearchResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: ((context, index) => const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: FeaturedBestSellerItem(),
            )));
  }
}
