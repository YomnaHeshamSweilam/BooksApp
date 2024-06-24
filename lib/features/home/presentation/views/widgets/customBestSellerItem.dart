import 'package:booksapp/core/utils/assets.dart';
import 'package:booksapp/core/utils/router.dart';
import 'package:booksapp/core/utils/styles.dart';
import 'package:booksapp/costants.dart';
import 'package:booksapp/features/home/data/models/book_model/book_model.dart';
import 'package:booksapp/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'book_rating.dart';

class FeaturedNewestItem extends StatelessWidget {
  const FeaturedNewestItem({
    super.key, required this.bookModel,
  });
    final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
          CustomBookImage(imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail??''),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width * .5,
                      child: Text(
                        bookModel.volumeInfo.title!,
                        style: Styles.textStyle22
                            .copyWith(fontFamily: kGtSectraFine),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      )),
                  const SizedBox(
                    height: 3,
                  ),
                   Text(
                    bookModel.volumeInfo.authors![0],
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Free",
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      const BookRating()
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
