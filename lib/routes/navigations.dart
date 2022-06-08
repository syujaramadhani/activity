import 'package:activity/screens/home/activity/form_activity.dart';
import 'package:activity/screens/home/detail_home_screen.dart';
import 'package:flutter/material.dart';

class Navigation {
  static toFormActivity(context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const FormActivity(),
      ),
    );
  }

  static toDetailHomeScreen(context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const DetailHomeScreen(),
      ),
    );
  }
}
