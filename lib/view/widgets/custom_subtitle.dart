import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class CustomSubtitle extends StatelessWidget {
  const CustomSubtitle({super.key, required this.headline});
  final String headline;
  @override
  Widget build(BuildContext context) {
    return Text(
      headline,
      style: const TextStyle(
        color: AppColors.kHeadTitleColor,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
