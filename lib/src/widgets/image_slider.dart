import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ImageCarousel extends StatelessWidget {
  const ImageCarousel({
    super.key,
    required this.imgList,
    required this.imageChanged,
  });

  final List<String> imgList;
  final Function imageChanged;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: CarouselSlider(
        options: CarouselOptions(
          onPageChanged: (index, reason) {
            imageChanged(index, reason);
          },
          viewportFraction: 1,
        ),
        items: imgList
            .map((item) => Container(
                  child: Center(
                      child: Image.network(
                    item,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  )),
                ))
            .toList(),
      ),
    );
  }
}
