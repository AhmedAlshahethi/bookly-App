import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/home_view_widgets/book_items_list_view.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/home_view_widgets/home_app_bar.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/home_view_widgets/newset_books_item_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeAppBar(),
              BookItemsListView(),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Text(
                  'Newset Books',
                  style: Styles.textStyle18,
                ),
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 23,
          ),
        ),
        SliverFillRemaining(
          child: NewsetBooksItemListView(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 30,
          ),
        ),
      ],
    );
  }
}
