import 'package:flutter/material.dart';

import '../../animations/bottom_animation.dart';
import '../../configs/app_dimensions.dart';
import '../../configs/space.dart';
import '../../utils/contact_utils.dart';
import '../../widget/contact_card.dart';
import '../../widget/custom_text_heading.dart';

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Space.all(1, 1),
      child: Column(
        children: [
          Space.y2!,
          const CustomSectionHeading(
            text: "Get in Touch",
          ),
          const CustomSectionSubHeading(
            text: "Let's build something together",
          ),
          Space.y2!,
          Wrap(
              alignment: WrapAlignment.center,
              runSpacing: AppDimensions.normalize(10),
              children: ContactUtils.contacts
                  .map((e) => WidgetAnimator(
                        child: ContactCard(
                          contactInfo: e,
                        ),
                      ))
                  .toList()),
        ],
      ),
    );
  }
}
