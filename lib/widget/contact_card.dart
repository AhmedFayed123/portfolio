import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:provider/provider.dart';

import '../configs/app_dimensions.dart';
import '../configs/app_theme.dart';
import '../configs/app_typography.dart';
import '../configs/space.dart';
import '../provider/app_provider.dart';
import '../utils/contact_utils.dart';

class ContactCard extends StatefulWidget {
  final ContactInfo contactInfo;

  const ContactCard({super.key, required this.contactInfo});

  @override
  ContactCardState createState() => ContactCardState();
}

class ContactCardState extends State<ContactCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);

    double height = MediaQuery.of(context).size.height;

    return MouseRegion(
      opaque: false,
      onEnter: (e) {
        setState(() {
          isHover = true;
        });
      },
      onExit: (e) {
        setState(() {
          isHover = false;
        });
      },
      child: Container(
        margin: Space.h,
        padding: Space.all(),
        width: AppDimensions.normalize(150),
        decoration: BoxDecoration(
          color: appProvider.isDark ? Colors.grey[900] : Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: isHover
              ? [
                  BoxShadow(
                    color: AppTheme.c!.primary!.withAlpha(100),
                    blurRadius: 12.0,
                    offset: const Offset(0.0, 0.0),
                  )
                ]
              : [
                  BoxShadow(
                    color: Colors.black.withAlpha(100),
                    blurRadius: 12.0,
                    offset: const Offset(0.0, 0.0),
                  )
                ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              widget.contactInfo.icon,
              color: AppTheme.c!.primary!,
              size: height * 0.1,
            ),
            Text(
              widget.contactInfo.title,
              style: AppText.b2b,
              textAlign: TextAlign.start,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Text(
              widget.contactInfo.details,
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            IconButton(
              onPressed: () async {
                await Clipboard.setData(
                    ClipboardData(text: widget.contactInfo.details));
              },
              icon: Icon(
                Icons.copy,
                color: AppTheme.c!.primary!,
                size: 25,
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
          ],
        ),
      ),
    );
  }
}
