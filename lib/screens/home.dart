import 'package:flutter/material.dart';

import '../layout/desktop/home.dart';
import '../layout/mobile/home.dart';
import '../layout/tablet/home.dart';
import '../responsive/responsive_layout.dart';
import '../utils/appConst.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key,});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  FocusNode myFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConst.primaryBackground,
      body: ResponsiveLayout(
        mobile: const HomeMobile(),
        tablet: const HomeTablet(),
        desktop: const HomeDesktop(),
      ),
    );
  }
}