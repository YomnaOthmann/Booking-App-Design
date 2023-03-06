import 'package:booking_app_design/models/item_model.dart';
import 'package:booking_app_design/view/widgets/custom_button.dart';
import 'package:booking_app_design/view/widgets/custom_subtitle.dart';
import 'package:booking_app_design/view/widgets/custom_trending_item.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key, this.model});
  final ItemModel? model;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  model!.image,
                  height: 350,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    const CustomSubtitle(headline: "About"),
                    SizedBox(height: 10),
                    Text(
                      model!.decription ?? "",
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 17,
                          height: 1.5,
                          overflow: TextOverflow.ellipsis),
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(height: 15),
                    const CustomSubtitle(headline: "Gallery"),
                    SizedBox(
                      height: 80,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        separatorBuilder: (context, index) => SizedBox(
                          width: 10,
                        ),
                        itemBuilder: (context, index) => ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            model!.image,
                            width: 80,
                            height: 80,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    CustomButton(
                        size: Size(double.maxFinite, 60),
                        onPressed: () {},
                        text: "Book now",
                        backgroundColor: Color(0xffD66871))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
