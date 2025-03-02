import 'package:flutter/material.dart';

import '../../configs/app_dimensions.dart';
import '../../configs/app_theme.dart';
import '../../configs/app_typography.dart';
import '../../configs/space.dart';
import '../../constants.dart';
import '../../utils/about_utils.dart';
import '../../widget/custom_text_heading.dart';
import '../../widget/tech_widget.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      height: MediaQuery.of(context).size.height,
      padding: Space.h,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CustomSectionHeading(
              text: '\nAbout Me',
            ),
            // const CustomSectionSubHeading(
            //   text: 'Get to know me :)',
            // ),
            // Space.y1!,
            // Image.asset(
            //   StaticUtils.mobilePhoto,
            //   height: height * 0.27,
            // ),
            SizedBox(
              height: height * 0.03,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Who am I?",
                style: AppText.b2!.copyWith(
                  color: AppTheme.c!.primary,
                ),
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
                    letterSpacing: 1.1,
                    fontFamily: 'Montserrat',
                    fontSize: AppDimensions.normalize(5),
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Space.y!,
            Divider(
              color: Colors.grey[800],
              thickness: AppDimensions.normalize(0.5),
            ),
            Space.y!,
            Text(
              'Technologies I have worked with:',
              style: AppText.l1!.copyWith(
                color: AppTheme.c!.primary,
              ),
            ),
            Space.y!,
            Wrap(
              direction: Axis.horizontal,
              children: kTools
                  .map(
                    (e) => ToolTechWidget(techName: e),
                  )
                  .toList(),
            ),
            Space.y!,
            Divider(
              color: Colors.grey[800],
              thickness: AppDimensions.normalize(0.5),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            // const AboutMeData(
            //   data: "Name",
            //   information: "Muhammad Hamza",
            // ),
            // const AboutMeData(
            //   data: "Email",
            //   information: "hamza.6.shakeel@gmail.com",
            // ),
            // Space.y!,
            // OutlinedButton(
            //     child: const Text("Resume"),
            //     onPressed: () {
            //       kIsWeb
            //           ? html.window.open(StaticUtils.resume, "pdf")
            //           : openURL(StaticUtils.resume);
            //     }),
            // Space.y!,
            // Wrap(
            //     alignment: WrapAlignment.center,
            //     crossAxisAlignment: WrapCrossAlignment.center,
            //     children: WorkUtils.logos
            //         .asMap()
            //         .entries
            //         .map(
            //           (e) => CommunityIconBtn(
            //             icon: e.value,
            //             link: WorkUtils.communityLinks[e.key],
            //             height: WorkUtils.communityLogoHeight[e.key],
            //           ),
            //         )
            //         .toList()),
          ],
        ),
      ),
    );
  }
}
