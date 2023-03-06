import 'package:booking_app_design/view/widgets/custom_subtitle.dart';
import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key, required this.headline, this.onPressed});
  final String headline;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomSubtitle(headline: headline),
          IconButton(
            onPressed: onPressed,
            icon: Icon(
              Icons.more_horiz_rounded,
              color: Colors.grey[400],
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
