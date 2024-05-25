
import 'package:booksapp/features/home/presentation/views/widgets/customBestSellerItem.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget{
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
   return ListView.builder(
    padding: EdgeInsets.zero,
    physics: const NeverScrollableScrollPhysics(),
    itemCount: 10,
    itemBuilder:((context, index) => const Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: FeaturedBestSellerItem(),
    )));
  }

}