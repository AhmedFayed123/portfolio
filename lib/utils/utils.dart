import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../sections/about/about.dart';
import '../sections/contact/contact.dart';
import '../sections/home/home.dart';
import '../sections/portfolio/portfolio.dart';
import '../sections/services/services.dart';
import '../widget/footer.dart';

class StaticUtils {
  static const String hi = 'assets/hi.gif';

  // photos
    static const String blackWhitePhoto = 'assets/photos/profile.png';

  // services
  static const String flutter = 'assets/services/flutter_icon.png';
  static const String front = 'assets/services/ux.png';
  static const String serverSide = 'assets/services/server_side_icon.png';


  static const List<IconData> socialIconURL = [
    FontAwesomeIcons.linkedin,
    FontAwesomeIcons.github,
  ];

  static const List<String> socialLinks = [
    "https://www.linkedin.com/in/ahmed-fayed-33572b245",
    "https://github.com/AhmedFayed123",
  ];

  static const String resume =
      '';

  static const String gitHub = 'https://github.com/AhmedFayed123';
}

class BodyUtils {
  static const List<Widget> views = [
    HomePage(),
    About(),
    Services(),
    Portfolio(),
    Contact(),
    Footer(),
  ];
}
