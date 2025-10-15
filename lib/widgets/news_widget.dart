import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cached_network_image/cached_network_image.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({super.key, required this.articalModel});
  final ArticalModel articalModel;

  @override
  Widget build(BuildContext context) {
    final Uri url = Uri.parse(articalModel.url);

    return InkWell(
      onTap: () async {
        await launchUrl(url);
      },

      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: CachedNetworkImage(
              imageUrl: articalModel.image,
              placeholder: (context, url) =>
                  const Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) =>
                  const Icon(Icons.broken_image, size: 50, color: Colors.grey),
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200,
            ),
          ),
          Text(
            articalModel.title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            articalModel.subTitle,
            style: const TextStyle(
              fontSize: 16,
              color: Color.fromARGB(255, 110, 110, 110),
            ),
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
