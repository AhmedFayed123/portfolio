import 'package:flutter/material.dart';

import '../../configs/app_dimensions.dart';
import '../../configs/app_theme.dart';
import '../../configs/app_typography.dart';
import '../../configs/space.dart';
import '../../utils/about_utils.dart';
import '../../widget/custom_text_heading.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({super.key});

  @override
  Widget build(BuildContext context) {
     double width = MediaQuery.of(context).size.width;

    return Container(
      padding: Space.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Space.y2!,
          Space.y2!,
          Space.y2!,

          const CustomSectionHeading(
            text: 'About Me',
          ),
          // const CustomSectionSubHeading(
          //   text: 'Get to know me :)',
          // ),
          Space.y2!,
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: width > 1000
                      ? 150.0
                      : width > 500.0
                          ? 70.0
                          : 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Who am I?',
                    style: AppText.b1!.copyWith(
                      color: AppTheme.c!.primary,
                      fontSize: AppDimensions.normalize(8),
                    ),
                  ),
                  Space.y1!,
                  Text(
                    AboutUtils.aboutMeHeadline,
                    style: AppText.b1b!.copyWith(
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  Space.y!,
                  ...AboutUtils.aboutMeDetail.map(
                    (e) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: ListTile(
                        leading: Icon(
                          Icons.play_arrow_rounded,
                          color: AppTheme.c!.primary!,
                        ),
                        title: Text(
                          e,
                          style: AppText.b2!.copyWith(
                            height: 1.4,
                            wordSpacing: 1,
                            letterSpacing: 1,
                            fontFamily: 'Montserrat',
                            fontSize: AppDimensions.normalize(6),
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                  ),

                  Space.y!,
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
                  // Space.y!,
                  // Row(
                  //   children: kTools
                  //       .map((e) => ToolTechWidget(
                  //             techName: e,
                  //           ))
                  //       .toList(),
                  // ),
                  // Space.y!,
                  // Divider(
                  //   color: Colors.grey[800],
                  //   thickness: AppDimensions.normalize(0.5),
                  // ),
                  //
                  // Row(
                  //   children: [
                  //     SizedBox(
                  //       height: AppDimensions.normalize(13),
                  //       width: AppDimensions.normalize(40),
                  //       child: OutlinedButton(
                  //         onPressed: () =>
                  //             html.window.open(StaticUtils.resume, 'pdf'),
                  //         child: const Text(
                  //           "Resume",
                  //         ),
                  //       ),
                  //     ),
                  //     Space.x1!,
                  //     Container(
                  //       color: Colors.grey[900]!,
                  //       width: AppDimensions.normalize(30),
                  //       height: AppDimensions.normalize(0.5),
                  //     ),
                  //     ...WorkUtils.logos.asMap().entries.map(
                  //           (e) => Expanded(
                  //             child: CommunityIconBtn(
                  //               icon: e.value,
                  //               link: WorkUtils.communityLinks[e.key],
                  //               height:
                  //                   WorkUtils.communityLogoHeight[e.key],
                  //             ),
                  //           ),
                  //         )
                  //   ],
                  // ),
                ],
              ),
            ),
          ),
          Container(
            width: width < 1230 ? width * 0.05 : width * 0.1,
          )
        ],
      ),
    );
  }
}
