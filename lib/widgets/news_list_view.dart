import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';
import 'package:news_app/widgets/news_widget.dart';

//* we use SliverList instead of using ListView with shrinkWrap because shrinkWrap: true make the performance worse by rendering all the widgets at the same time
class NewsListView extends StatelessWidget {
  final List<ArticalModel> articals;

  const NewsListView({super.key, required this.articals});

  @override
  Widget build(BuildContext context) {
    //* ثبتها قاعدة الافضل عدم وضع ال method جوا ال buld methoe لانها كل شوؤة بيتعملها rebuild الي في حالات قليلة جدا
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articals.length,
        (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: NewsWidget(articalModel: articals[index]),
        ),
      ),
    );
  }
}
