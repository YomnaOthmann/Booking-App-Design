import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key, this.image});
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(120)),
        child: Container(
          height: 300,
          width: 180,
          color: Colors.grey[300],
          child: Container(
            decoration: BoxDecoration(
                gradient: AppColors.kGradient,
                image: image != null
                    ? DecorationImage(
                        image: AssetImage(image!),
                        fit: BoxFit.fill,
                      )
                    : null),
          ),
        ),
      ),
    );
  }
}
