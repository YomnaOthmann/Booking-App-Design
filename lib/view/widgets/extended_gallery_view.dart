import 'package:flutter/material.dart';

class GalleryView extends StatelessWidget {
  const GalleryView({super.key, required this.galleryImages});

  final List<String> galleryImages;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
      itemCount: galleryImages.length,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            galleryImages[index],
            fit: BoxFit.cover,
            height: 200,
            width: 150,
          ),
        ),
      ),
    ));
  }
}
