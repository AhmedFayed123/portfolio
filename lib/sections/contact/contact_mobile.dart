import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../configs/app_dimensions.dart';
import '../../configs/space.dart';
import '../../utils/contact_utils.dart';
import '../../widget/contact_card.dart';
import '../../widget/custom_text_heading.dart';

class ContactMobileTab extends StatelessWidget {
  const ContactMobileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Space.y2!,
        const CustomSectionHeading(
          text: "Get in Touch",
        ),
        const CustomSectionSubHeading(
          text: "Let's build something together",
        ),
        Space.y2!,
        CarouselSlider.builder(
          itemCount: ContactUtils.contacts.length,
          itemBuilder: (BuildContext context, int itemIndex, int i) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ContactCard(
              contactInfo: ContactUtils.contacts[i],
            ),
          ),
          options: CarouselOptions(
            height: AppDimensions.normalize(150),
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            enlargeCenterPage: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            enableInfiniteScroll: false,
          ),
        ),
      ],
    );
  }
}
