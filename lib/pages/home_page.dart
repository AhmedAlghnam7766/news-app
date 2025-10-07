import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_list_view.dart';
import 'package:news_app/widgets/my_sliver_app_bar.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              MySliverAppBar(),
              SliverToBoxAdapter(child: CategoryListView()),
              SliverToBoxAdapter(child: SizedBox(height: 20)),
              NewsListViewBuilder(category: 'general'),
            ],
          ),
        ),
      ),
    );
  }
}
