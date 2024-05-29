import 'package:booksapp/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 14,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          '4.6',
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          width: 5,
        ),
        Opacity(
            opacity: .5,
            child: Text('(2.465)',
                style:
                    Styles.textStyle14.copyWith(fontWeight: FontWeight.w500)))
      ],
    );
  }
}
