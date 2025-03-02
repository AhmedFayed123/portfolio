import 'package:flutter/cupertino.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class ScrollProvider extends ChangeNotifier {
  final scrollController = ItemScrollController();
  final GlobalKey testKey = GlobalKey();

  ItemScrollController get controller => scrollController;

  scroll(int index) {
    switch (index) {
      case 0:
        break;
      case 1:
        break;

      case 2:
        break;

      case 3:
        break;
    }
    // index == 1
    //     ? 270
    //     : index == 2
    //         ? 255
    //         : index == 3
    //             ? 250
    //             : 245;
    controller.scrollTo(
        index: index,
        duration: const Duration(seconds: 2),
        curve: Curves.easeInOutCubic);
    // controller.animateTo(
    //   AppDimensions.normalize(
    //     offset * index.toDouble(),
    //   ),
    //   duration: const Duration(seconds: 1),
    //   curve: Curves.easeInOut,
    // );
  }

  scrollMobile(int index) {

    controller.scrollTo(
        index: index,
        duration: const Duration(seconds: 2),
        curve: Curves.easeInOutCubic);
    // controller.animateTo(
    //   AppDimensions.normalize(
    //     offset * index.toDouble(),
    //   ),
    //   duration: const Duration(seconds: 1),
    //   curve: Curves.easeInOut,
    // );
  }
}
