import 'package:flutter/material.dart';

class ContactInfo {
  final IconData icon;
  final String title;
  final String details;

  const ContactInfo(
      {required this.icon, required this.title, required this.details});
}

class ContactUtils {
  static const List<ContactInfo> contacts = [
    ContactInfo(
      icon: Icons.home,
      title: "Location",
      details: "Menofia, Egypt",
    ),
    ContactInfo(
      icon: Icons.phone,
      title: "Phone",
      details: "+20 0101 792 2061",

    ),
    ContactInfo(
      icon: Icons.mail,
      title: "Email",
      details: "medofayed683@gmail.com",
    ),
  ];

}
