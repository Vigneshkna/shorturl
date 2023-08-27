import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neopop/widgets/buttons/neopop_button/neopop_button.dart';

import '../../components/footer.dart';
import '../../utils/appConst.dart';

class HomeMobile extends StatefulWidget {
  const HomeMobile({super.key,});

  @override
  State<HomeMobile> createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  FocusNode myFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConst.primaryBackground,
      body: Container(
          margin: const EdgeInsets.only(left: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text(
                'Short URL',
                style: TextStyle(color: AppConst.appWhite500,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    fontSize: 50.0),
              ),
              Text(
                'Short URL - Paste URL to be shortened',
                style: TextStyle(color: AppConst.appWhite500,
                    fontStyle: FontStyle.normal,
                    fontSize: 30.0),
              ),
              Padding(padding: const EdgeInsets.only(top: 14),
                child: Text(
                  'Short URL is a free, fast and secure tool to shorten a URL or reduce a link.',
                  style: TextStyle(color: AppConst.appWhite100,
                      fontStyle: FontStyle.normal,
                      fontSize: 22.0),
                ),
              ),
              Text(
                'Use our URL Shortener to make a shortened link making it easy to remember and share.',
                style: TextStyle(color: AppConst.appWhite100,
                    fontStyle: FontStyle.normal,
                    fontSize: 22.0),
              ),

              Padding(padding: const EdgeInsets.only(top: 18),
                  child:Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width*0.3,
                          child: TextField(
                            decoration: InputDecoration(
                              filled: false,
                              fillColor: Colors.transparent,
                              labelText: "Enter URL Here",
                              labelStyle: TextStyle(
                                  color: myFocusNode.hasFocus ? AppConst.appWhite500 : AppConst.appWhite100
                              ),
                              hintText: "Enter URL Here",
                              hintStyle: TextStyle(
                                  color: myFocusNode.hasFocus ? AppConst.appWhite500 : AppConst.appWhite100
                              ),

                              contentPadding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: AppConst.appYoyo600, width: 0.0),
                              ),
                              focusedBorder:OutlineInputBorder(
                                borderSide: BorderSide(color: AppConst.appYoyo600, width: 0.0),
                              ),
                            ),
                            style: TextStyle(color: AppConst.appWhite100,
                                fontStyle: FontStyle.normal,
                                fontSize: 22.0),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width*0.01,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width*0.3,
                          child: TextField(
                            decoration: InputDecoration(
                              filled: false,
                              fillColor: Colors.transparent,
                              labelText: "Enter Your Custom text (Optional)",
                              labelStyle: TextStyle(
                                  color: myFocusNode.hasFocus ? AppConst.appWhite500 : AppConst.appWhite100
                              ),
                              hintText: "Enter Your Custom text (Optional)",
                              hintStyle: TextStyle(
                                  color: myFocusNode.hasFocus ? AppConst.appWhite500 : AppConst.appWhite100
                              ),
                              contentPadding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: AppConst.appYoyo600, width: 0.0),
                              ),
                              focusedBorder:OutlineInputBorder(
                                borderSide: BorderSide(color: AppConst.appYoyo600, width: 0.0),
                              ),
                            ),
                            style: TextStyle(color: AppConst.appWhite100,
                                fontStyle: FontStyle.normal,
                                fontSize: 22.0),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width*0.01,),
                        SizedBox(
                            width: MediaQuery.of(context).size.width*0.2,
                            child: NeoPopButton(
                              color: AppConst.appWhite500,
                              onTapUp: () => HapticFeedback.vibrate(),
                              onTapDown: () => HapticFeedback.vibrate(),
                              parentColor: Colors.transparent,
                              buttonPosition: Position.center,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Shorten URL",
                                        style: TextStyle(color: AppConst.appBlack500,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0)),
                                  ],
                                ),
                              ),
                            )),
                      ]
                  )),
            ],
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Help',
        child: const Icon(Icons.ac_unit),
      ),

      // Footer
      persistentFooterButtons: [
        footer
      ],
    );
  }
}
