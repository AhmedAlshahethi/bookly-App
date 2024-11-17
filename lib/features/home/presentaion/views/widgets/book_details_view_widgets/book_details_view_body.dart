import 'package:bookly_app/features/home/presentaion/views/widgets/book_details_view_widgets/book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/book_details_view_widgets/book_details_section.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/book_details_view_widgets/similar_book_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        BookDetailsAppBar(),
        BookDetailsSection(),
        Expanded(
          child: SizedBox(
            height: 50,
          ),
        ),
        SimilarBookSection(),
        SizedBox(
          height: 34,
        ),
      ],
    );
  }
}
