import 'package:flutter/material.dart';

class ImageLoading extends StatelessWidget {
  // final String url;
  const ImageLoading();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // CachedNetworkImage(
          //   width: double.infinity,
          //   height: 250,
          //   fit: BoxFit.cover,
          //   imageUrl:
          //       'https://upload.wikimedia.org/wikipedia/commons/2/2d/Snake_River_%285mb%29.jpg',
          //   progressIndicatorBuilder: (context, url, downloadProgress) =>
          //       CircularProgressIndicator(value: downloadProgress.progress),
          //   errorWidget: (context, url, error) => const Icon(
          //     Icons.error,
          //     size: 100,
          //     color: Colors.red,
          //   ),
          // ),
          Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/2/2d/Snake_River_%285mb%29.jpg',
            loadingBuilder: (context, child, progress) {
              var percentage = 0.0;
              final total = progress?.expectedTotalBytes;
              if (progress == null) {
                return child;
              }
              if (total != null) {
                final current = progress.cumulativeBytesLoaded;
                percentage = current / total;
              }
              return Center(
                child: ProgressIndicatorTheme(
                  data: const ProgressIndicatorThemeData(
                    color: Colors.red,
                  ),
                  child: LinearProgressIndicator(
                    value: percentage,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
