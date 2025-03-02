import 'package:flutter/material.dart';

class DarkLightSwitch extends StatelessWidget {
  final bool isDark;
  final Function(bool isDark) onChange;

  const DarkLightSwitch(
      {Key? key, required this.isDark, required this.onChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
        onPressed: () => onChange(!isDark),
        icon: Icon(isDark ? Icons.dark_mode : Icons.light_mode));
  }
}
