import 'package:flutter/material.dart';

import '../../configs/app_dimensions.dart';
import '../../configs/app_theme.dart';
import '../../configs/app_typography.dart';
import '../../configs/space.dart';
import '../../utils/about_utils.dart';
import '../../widget/custom_text_heading.dart';

class AboutTab extends StatelessWidget {
  const AboutTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      height: MediaQuery.of(context).size.height,
      padding: Space.h,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Center(
              child: CustomSectionHeading(
                text: '\nAbout Me',
              ),
            ),
            // const Center(
            //   child: CustomSectionSubHeading(
            //     text: 'Get to know me :)',
            //   ),
            // ),
            // Space.y1!,
            // Image.asset(
            //   StaticUtils.mobilePhoto,
            //   height: height * 0.27,
            // ),
            SizedBox(
              height: height * 0.03,
            ),
            Text(
              "Who am I?",
              style: AppText.b2!.copyWith(
                color: AppTheme.c!.primary,
              ),
            ),
            Space.y1!,
            Text(
              AboutUtils.aboutMeHeadline,
              style: AppText.b2b!.copyWith(
                fontFamily: 'Montserrat',
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            ...AboutUtils.aboutMeDetail.map(
              (e) => ListTile(
                leading: Icon(
                  Icons.play_arrow_rounded,
                  color: AppTheme.c!.primary!,
                ),
                title: Text(
                  e,
                  style: AppText.b2!.copyWith(
                    height: 2,
                    letterSpacing: 0.9,
                    fontFamily: 'Montserrat',
                    fontSize: AppDimensions.normalize(6),
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            // Space.y!,
            // Divider(
            //   color: Colors.grey[800],
            //   thickness: AppDimensions.normalize(0.5),
            // ),
            // Space.y!,
            // Text(
            //   'Technologies I have worked with:',
            //   style: AppText.l1!.copyWith(
            //     color: AppTheme.c!.primary,
            //   ),
            // ),
            // Row(
            //   children: kTools
            //       .map(
            //         (e) => ToolTechWidget(techName: e),
            //       )
            //       .toList(),
            // ),
            // Space.y!,
            // Divider(
            //   color: Colors.grey[800],
            //   thickness: AppDimensions.normalize(0.5),
            // ),
            Space.y!,
            // Row(
            //   children: [
            //     Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: const [
            //         AboutMeData(
            //           data: "Name",
            //           information: "Muhammad Hamza",
            //         ),
            //         AboutMeData(
            //           data: "Age",
            //           information: "24",
            //         ),
            //       ],
            //     ),
            //     SizedBox(
            //       width: width > 710 ? width * 0.2 : width * 0.05,
            //     ),
            //     Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: const [
            //         AboutMeData(
            //           data: "Email",
            //           information: "hamza.6.shakeel@gmail.com",
            //         ),
            //         AboutMeData(
            //           data: "From",
            //           information: "Attock, PK",
            //         ),
            //       ],
            //     ),
            //   ],
            // ),
            // Space.y1!,
            // Row(
            //   children: [
            //     SizedBox(
            //       height: AppDimensions.normalize(13),
            //       width: AppDimensions.normalize(40),
            //       child: OutlinedButton(
            //         onPressed: () => html.window.open(StaticUtils.resume, 'pdf'),
            //         child: const Text(
            //           "Resume",
            //         ),
            //       ),
            //     ),
            //     Space.x!,
            //     Container(
            //       width: width * 0.05,
            //       decoration: BoxDecoration(
            //         border: Border(
            //           bottom: BorderSide(
            //             color: Colors.grey[900]!,
            //             width: 2.0,
            //           ),
            //         ),
            //       ),
            //     ),
            //     SingleChildScrollView(
            //       scrollDirection: Axis.horizontal,
            //       child: Row(
            //           children: WorkUtils.logos
            //               .asMap()
            //               .entries
            //               .map(
            //                 (e) => CommunityIconBtn(
            //                   icon: e.value,
            //                   link: WorkUtils.communityLinks[e.key],
            //                   height: WorkUtils.communityLogoHeight[e.key],
            //                 ),
            //               )
            //               .toList()),
            //     ),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
