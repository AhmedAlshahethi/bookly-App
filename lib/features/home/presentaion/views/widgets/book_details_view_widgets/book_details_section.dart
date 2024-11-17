import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/book_details_view_widgets/book_details_actions.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/home_view_widgets/book_item.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/home_view_widgets/rating_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .28),
          child: const BookItem(),
        ),
        const SizedBox(
          height: 32,
        ),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 13,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const RatingItem(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 40,
        ),
        const BookDeatilsActions(),
      ],
    );
  }
}
