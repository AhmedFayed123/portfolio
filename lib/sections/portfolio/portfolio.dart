import 'package:flutter/material.dart';
import 'package:portfolio/sections/portfolio/portfolio_desktop.dart';
import 'package:portfolio/sections/portfolio/portfolio_mobile.dart';

import '../../responsive/responsive.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: PortfolioMobileTab(),
      tablet: PortfolioMobileTab(),
      desktop: PortfolioDesktop(),
    );
  }
}
