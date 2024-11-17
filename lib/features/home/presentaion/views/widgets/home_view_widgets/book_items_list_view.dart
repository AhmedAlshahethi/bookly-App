import 'package:bookly_app/features/home/presentaion/views/widgets/home_view_widgets/book_item.dart';
import 'package:flutter/material.dart';

class BookItemsListView extends StatelessWidget {
  const BookItemsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .25,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 8,
              ),
              child: BookItem(),
            );
          },
        ),
      ),
    );
  }
}
