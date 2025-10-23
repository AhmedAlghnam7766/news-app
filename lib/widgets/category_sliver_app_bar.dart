import 'package:flutter/material.dart';

class CategorySliverAppBar extends StatelessWidget {
  const CategorySliverAppBar({super.key, required this.categoryText});
  final String categoryText;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: const BackButton(color: Colors.black),
      backgroundColor: Colors.white,
      scrolledUnderElevation: 0.0,
      floating: true,
      centerTitle: true,
      title: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: categoryText,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const TextSpan(
              text: 'News',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xffD7BD71),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
