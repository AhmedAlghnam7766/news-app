import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_sliver_app_bar.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class CategoryPage extends StatelessWidget {
  final String category;

  const CategoryPage({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              CategorySliverAppBar(categoryText: category),
              const SliverToBoxAdapter(child: SizedBox(height: 20)),
              NewsListViewBuilder(category: category),
            ],
          ),
        ),
      ),
    );
  }
}
