
import 'package:flutter/material.dart';

import 'custom_list_item.dart';

class FeaturedListBooksView extends StatelessWidget
{
  const FeaturedListBooksView({super.key});

  @override
  Widget build(BuildContext context) {
   
  return SizedBox(
     height: MediaQuery.of(context).size.height* .3,
    child: ListView.builder(
       scrollDirection : Axis.horizontal,
      itemBuilder: (
        BuildContext context,  index) { 
        return const CustomListItemBuilder();
       },),
  ); 
  }
}