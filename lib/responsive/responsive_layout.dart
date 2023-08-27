import 'package:flutter/material.dart';
import '../utils/appConst.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  ResponsiveLayout({required this.mobile, required this.tablet, required this.desktop});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= AppConst.mobileWidth) {
          return mobile;
        } else if (constraints.maxWidth > AppConst.mobileWidth && constraints.maxWidth <= AppConst.webWidth) {
          return tablet;
        }else{
          return desktop;
        }
      },
    );
  }
}