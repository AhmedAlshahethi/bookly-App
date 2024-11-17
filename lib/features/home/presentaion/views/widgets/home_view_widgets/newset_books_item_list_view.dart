import 'package:bookly_app/features/home/presentaion/views/widgets/home_view_widgets/newset_book_item.dart';
import 'package:flutter/material.dart';

class NewsetBooksItemListView extends StatelessWidget {
  const NewsetBooksItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: NewsetBookItem(),
        );
      },
    );
  }
}
