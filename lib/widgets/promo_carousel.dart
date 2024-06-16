import 'package:arpeggio/widgets/rounded_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class PromoCarousel extends StatelessWidget {
  const PromoCarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 158, viewportFraction: 0.852),
      items: const [
        ArpRoundedImage(imageUrl: 'assets/banner/promo_1.png'),
        ArpRoundedImage(imageUrl: 'assets/banner/promo_2.png'),
        ArpRoundedImage(imageUrl: 'assets/banner/promo_3.png'),
        ArpRoundedImage(imageUrl: 'assets/banner/promo_4.png'),
      ],
    );
  }
}
