import 'package:bookly_app/features/home/presentaion/views/widgets/book_details_view_widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: BookDetailsViewBody(),
      ),
    );
  }
}
