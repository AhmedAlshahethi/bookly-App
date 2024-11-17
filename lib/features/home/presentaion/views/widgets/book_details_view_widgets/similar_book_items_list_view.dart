import 'package:bookly_app/features/home/presentaion/views/widgets/home_view_widgets/book_item.dart';
import 'package:flutter/material.dart';

class SimilarBookItemsListView extends StatelessWidget {
  const SimilarBookItemsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 5,
            ),
            child: BookItem(),
          );
        },
      ),
    );
  }
}
