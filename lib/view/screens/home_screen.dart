import 'package:booking_app_design/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Padding(
            padding: EdgeInsetsDirectional.only(start: 16.0),
            child: Icon(
              Icons.menu,
              size: 30,
              color: Colors.black,
            ),
          ),
          onPressed: () {},
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
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
            const SizedBox(
              height: 30,
            ),
            TextField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search_rounded),
                  fillColor: Colors.grey[100],
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
