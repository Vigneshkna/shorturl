import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/appConst.dart';

Widget footer = Row(
  mainAxisAlignment: MainAxisAlignment.start,
  children: [
    Text.rich(
      TextSpan(
        style: TextStyle(
            fontFamily: GoogleFonts.ubuntuCondensed().fontFamily,
            fontStyle: FontStyle.normal,
            color: AppConst.appWhite500,
            fontSize: 16),
        children: [
          const TextSpan(text: 'Made with '),
          WidgetSpan(
            child: Icon(Icons.favorite, size: 17, color: AppConst.appYoyo600),
          ),
          const TextSpan(text: ' by '),
          TextSpan(
              text: 'Vigneshkna',
              style: TextStyle(
                color: AppConst.appYoyo600,fontWeight: FontWeight.bold,
              ),
              recognizer: TapGestureRecognizer()..onTap = _launchGit)
        ],
      ),
    )
  ],
);

_launchGit() async {
  if (!await launchUrl(Uri.parse(AppConst.gitProfile),
      mode: LaunchMode.externalApplication)) {
    throw 'Could not launch ${AppConst.gitProfile}';
  }
}
