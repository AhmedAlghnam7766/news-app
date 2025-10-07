import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_widget.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  final List<CategoryModel> categoryModels = const [
    CategoryModel(imagePath: 'assets/sports.avif', text: 'Sports'),
    CategoryModel(imagePath: 'assets/technology.jpeg', text: 'Technology'),
    CategoryModel(imagePath: 'assets/health.avif', text: 'Health'),
    CategoryModel(imagePath: 'assets/business.avif', text: 'Business'),
    CategoryModel(
      imagePath: 'assets/entertainment.avif',
      text: 'Entertainment',
    ),
    CategoryModel(imagePath: 'assets/science.avif', text: 'Science'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryModels.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: CategoryWidget(categoryModel: categoryModels[index]),
        ),
      ),
    );
  }
}
