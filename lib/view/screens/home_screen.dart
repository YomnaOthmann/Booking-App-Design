import 'package:booking_app_design/constants/colors.dart';
import 'package:booking_app_design/models/item_model.dart';
import 'package:booking_app_design/view/screens/about_screen.dart';
import 'package:booking_app_design/view/widgets/custom_appbar.dart';
import 'package:booking_app_design/view/widgets/custom_header.dart';
import 'package:booking_app_design/view/widgets/custom_textfield.dart';
import 'package:booking_app_design/view/widgets/custom_recommended_list_item.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_trending_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 70), child: CustomAppBar()),
      body: Container(
        height: double.maxFinite,
        padding: const EdgeInsetsDirectional.only(start: 30),
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Where do you \nwant to go?",
                style: TextStyle(
                  color: AppColors.kHeadTitleColor,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              const CustomTextField(),
              const SizedBox(height: 15),
              const CustomHeader(
                headline: "Recommended",
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 250,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => CustomRecommendedListItem(
                    model: items[index],
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AboutScreen(
                                  model: items[index],
                                )),
                      );
                    },
                  ),
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 25),
                  itemCount: items.length,
                ),
              ),
              // ignore: prefer_const_constructors
              SizedBox(height: 15),
              const CustomHeader(headline: "Trending this month"),
              const SizedBox(height: 15),
              SizedBox(
                height: 80,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => CustomTrendingItem(
                    model: items[index],
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AboutScreen(
                                  model: items[index],
                                )),
                      );
                    },
                  ),
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 30,
                  ),
                  itemCount: items.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
