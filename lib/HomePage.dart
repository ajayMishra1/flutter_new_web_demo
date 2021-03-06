import 'package:flutter/material.dart';
import 'package:flutter_web_firebase/personalDetails.dart';
import 'package:flutter_web_firebase/professionalDetails.dart';
import 'package:flutter_web_firebase/professionalSummary.dart';
import 'package:flutter_web_firebase/projects.dart';
import './drawer.dart';

import './intro_page.dart';
  

class HomePage extends StatelessWidget {
  final _controller = PageController();

  BuildContext context;

  @override
  Widget build(BuildContext context) {
    this.context = context;
    var drawer = LeftDrawer(onItemTap);
    var body = PageView(
      physics: MediaQuery.of(context).size.width < 600
          ? null
          : NeverScrollableScrollPhysics(),
      controller: _controller,
      scrollDirection: Axis.vertical,
      children: <Widget>[
        IntroPage(),
        ProfessionalSummary(),
        ProfessionalDetails(),
        Projects(),
        PersonalDetails(),
      ],
    );
    return WebLayout(
      mobileLayout: Scaffold(
        body: body,
        drawer: drawer,
        appBar: AppBar(
          title: Text("RESUME"),
          elevation: 1,
          backgroundColor: Color(0xFF34495e),
        ),
      ),
      webLayout: Scaffold(
        body: Container(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              drawer,
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: body,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onItemTap(int index) {
    _controller.jumpToPage(index);
    if (MediaQuery.of(context).size.width < 600) Navigator.pop(context);
  }
}

class WebLayout extends StatelessWidget {
  final Widget mobileLayout;
  final Widget webLayout;

  WebLayout({this.mobileLayout, this.webLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 600) {
          return webLayout;
        } else {
          return mobileLayout;
        }
      },
    );
  }
}
