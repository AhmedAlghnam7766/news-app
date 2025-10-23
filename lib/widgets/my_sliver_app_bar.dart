import 'package:flutter/material.dart';
import 'package:news_app/pages/developer_info.dart';

class MySliverAppBar extends StatelessWidget {
  const MySliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DeveloperInfo()),
          );
        },
        icon: const Icon(Icons.person_search_outlined, size: 30),
      ),
      backgroundColor: Colors.white,
      scrolledUnderElevation: 0.0,
      floating: true,
      centerTitle: true,
      title: const Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: 'News',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: 'Cloud',
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
