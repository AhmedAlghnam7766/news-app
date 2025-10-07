import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/pages/category_page.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.categoryModel});

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CategoryPage(category: categoryModel.text),
        ),
      ),
      child: Container(
        width: 200,
        height: 130,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(categoryModel.imagePath),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadiusGeometry.circular(10.0),
        ),

        child: Center(
          child: Text(
            categoryModel.text,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
