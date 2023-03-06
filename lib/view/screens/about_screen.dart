import 'package:booking_app_design/models/item_model.dart';
import 'package:booking_app_design/view/widgets/custom_button.dart';
import 'package:booking_app_design/view/widgets/custom_subtitle.dart';
import 'package:booking_app_design/view/widgets/extended_gallery_view.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key, this.model});
  final ItemModel? model;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
        child: SizedBox(
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
                    const SizedBox(height: 10),
                    const CustomSubtitle(headline: "About"),
                    const SizedBox(height: 10),
                    Text(
                      model!.decription,
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 16,
                          height: 1.5,
                          overflow: TextOverflow.ellipsis),
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 15),
                    const CustomSubtitle(headline: "Gallery"),
                    const SizedBox(height: 15),
                    SizedBox(
                      height: 80,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          separatorBuilder: (context, index) => const SizedBox(
                                width: 10,
                              ),
                          itemBuilder: (context, index) => index < 3
                              ? ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    model!.galleryImages[index],
                                    width: 80,
                                    height: 80,
                                    fit: BoxFit.fill,
                                  ),
                                )
                              : GestureDetector(
                                  onTap: () => Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return GalleryView(
                                        galleryImages: model!.galleryImages);
                                  })),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Stack(children: [
                                      Image.asset(
                                        model!.image,
                                        width: 80,
                                        height: 80,
                                        fit: BoxFit.fill,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        width: 80,
                                        height: 80,
                                        color:
                                            const Color.fromARGB(181, 0, 0, 0),
                                        child: Text(
                                          "+${model!.galleryImages.length - 3}",
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 22),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ]),
                                  ),
                                )),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    CustomButton(
                        size: const Size(double.maxFinite, 60),
                        onPressed: () {},
                        text: "Book now",
                        backgroundColor: const Color(0xffD66871))
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
