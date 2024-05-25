

import 'package:booksapp/core/utils/assets.dart';
import 'package:booksapp/core/utils/styles.dart';
import 'package:booksapp/costants.dart';
import 'package:flutter/material.dart';


import 'book_rating.dart';

class FeaturedBestSellerItem extends StatelessWidget {
  const FeaturedBestSellerItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
     aspectRatio: 3.25 /4,
     child: Padding(
       padding: const EdgeInsets.only(right: 24),
       child: Container(
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          image: const DecorationImage(
          image: AssetImage(AssetsData.image),
          fit:BoxFit.fill )),
       ),
     ),
     ),
     Expanded(
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const SizedBox(height: 5,),
           SizedBox(
            width: MediaQuery.of(context).size.width*.5,
             child:  Text('Harry Potter and the Globet Of Fire', 
                   style: Styles.textStyle22.copyWith(fontFamily: kGtSectraFine),
                   overflow: TextOverflow.ellipsis,
                   maxLines: 2,
             )
           ),
           const SizedBox(height: 3,),
           const Text('JK. Rowling', style: Styles.textStyle14,),
           const SizedBox(height: 5,),
           Row(
            mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Text("199.99 \$", style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),),
               const Spacer(),
               const BookRating()
             ],
           ),
          
        
        ],
       ),
     )
        ],
      ),
          
    );
  }
}



