import 'package:flutter/material.dart';

import '../../responsive/responsive.dart';
import 'about_desktop.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      tablet: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: AboutDesktop(),
      ),
      mobile: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: AboutDesktop(),
      ),
      desktop: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: AboutDesktop(),
      ),
    );
  }
}
