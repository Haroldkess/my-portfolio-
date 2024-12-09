import 'package:flutter/material.dart';
import 'package:harolddevportfolio/app/sections/contact/contact.dart';
import 'package:harolddevportfolio/app/sections/home/home.dart';
import 'package:harolddevportfolio/app/sections/portfolio/portfolio.dart';
import 'package:harolddevportfolio/app/sections/services/services.dart';
import 'package:harolddevportfolio/app/widgets/footer.dart';

class BodyUtils {
  static const List<Widget> views = [
    HomePage(),
    // About(),
    Portfolio(),
    Services(),

    Contact(),
    Footer(),
  ];
}
