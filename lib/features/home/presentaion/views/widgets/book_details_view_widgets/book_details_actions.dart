import 'package:bookly_app/core/widgets/action_button.dart';
import 'package:flutter/material.dart';

class BookDeatilsActions extends StatelessWidget {
  const BookDeatilsActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Row(
        children: [
          Expanded(
            child: ActionButton(
              backgroundColor: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
                bottomLeft: Radius.circular(0),
                topRight: Radius.circular(0),
              ),
              text: '19.99€',
              textColor: Colors.black,
              textSize: 18,
              onPressed: () {},
            ),
          ),
          Expanded(
            child: ActionButton(
              backgroundColor: const Color(0xffEF8262),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(0),
                bottomRight: Radius.circular(0),
                bottomLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              text: 'Free preview',
              textColor: Colors.white,
              textSize: 18,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
