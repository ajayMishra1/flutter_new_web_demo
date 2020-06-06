import 'package:flutter/material.dart';
import 'package:flutter_web_firebase/HomePage.dart';
import 'package:flutter_web_firebase/main.dart';
import 'package:url_launcher/url_launcher.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var body = Flexible(
      fit: FlexFit.tight,
      flex: 2,
      child: Stack(
        children: <Widget>[
          Positioned.fill(child: AnimatedBackground()),
          Positioned(
            bottom: 0,
            child: Opacity(
              opacity: 0.6,
              child: Image.asset(
                'assets/images/footer.png',
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
         // Positioned.fill(child: Particles(30)),
          Container(
            padding: EdgeInsets.all(32),
            child: ListView(children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(child:
                     Text(
                    "Projects",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                    ),
                    softWrap: true,
                  ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Mughal Mahal ",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    softWrap: true,
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Project Description:\n• Mughal mahal is a food delivery app where users can order food online in kuwait city.\n• Users can choose their favourite food and order it via this app.\n• Users can track their order whether it is cooking or it’s on the way.",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                    softWrap: true,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Environment:\n​Objective​-C, SQlite, Xcode , Crashlytics. ",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                    ),
                    softWrap: true,
                  ),
                  SizedBox(height: 15),
                  GestureDetector(
                      child: Text("Click here for App Link",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.blue,
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          )),
                      onTap: () {
                        launch(
                            'https://apps.apple.com/us/app/mughal-mahal/id1455844028?ls=1');
                      }),
                  SizedBox(height: 50),
                  Text(
                    "Custom Travel Solutions(CTS)",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    softWrap: true,
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Project Description:\n• CTS application is used to do the bookings for the members of CTS clubs. \n• Members can login via username and password provided to them.\n• Members can book for flight, hotels, cars and activity all over the world  from this app.",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                    softWrap: true,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Environment:\n​​Swift, Storyboard, Fire base, Crashlytics. ",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                    ),
                    softWrap: true,
                  ),
                  SizedBox(height: 15),
                  GestureDetector(
                      child: Text("Click here for App Link",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.blue,
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          )),
                      onTap: () {
                        launch(
                            'https://apps.apple.com/us/app/custom-travel-solutions/id1448151685?ls=1');
                      }),
                  SizedBox(height: 50),
                  Text(
                    "HivizIQ 360 (Enterprise iPad App)",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    softWrap: true,
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Project Description:\n• This app is designed mainly for drillers who are working in mines.\n• This app is mainly based on a local database .\n• Drillers can add their daily reports like fault reports, injury reports etc.",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                    softWrap: true,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Environment:\n​​Swift, Cocoa Touch, Sqlite, Crashlytics. ",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                    ),
                    softWrap: true,
                  ),
                  SizedBox(height: 15),
                  GestureDetector(
                      child: Text("Click here for App Download Link",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.blue,
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          )),
                      onTap: () {
                        launch(
                            'https://www.hiviz360.hiviz360.com/ipa/index.html');
                      }),
                  SizedBox(height: 50),
                  Text(
                    "TrustTags",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    softWrap: true,
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Project Description:\n• TrustTags is a mobile app platform for Users that enables them to validate and ensure the purchase of genuine branded products.\n• Users can scan QR code placed in the product to insure that product is genuine.",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                    softWrap: true,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Environment:\n​​Swift, Cocoa Touch, Crashlytics. ",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                    ),
                    softWrap: true,
                  ),
                  SizedBox(height: 15),
                  GestureDetector(
                      child: Text("Click here for App Link",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.blue,
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          )),
                      onTap: () {
                        launch(
                            'https://apps.apple.com/us/app/trusttags/id1454382987?ls=1');
                      }),
                  SizedBox(height: 50),
                  Text(
                    "Tasyl App - BLE project (In development)",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    softWrap: true,
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Project Description:\n• Tasyl is a BLE based app which is used for tracking your keys and pen drives and other important things.\n• One BLE device is placed inside keyChain or pendrive and users can scan and find it via this mobile app.",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                    softWrap: true,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Environment:\n​​​Swift, Cocoa Touch,SQLite, Crashlytics. ",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                    ),
                    softWrap: true,
                  ),
                 
                  SizedBox(height: 50),
                  Text(
                    "FTX Trade App - Flutter Project (In development)",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    softWrap: true,
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Project Description:\n• FTX is a trading app like Olyamp trade where users can learn how to trade.\n• Users can request money and then they can use that money to trade in different assets like GOLD, SILVER and different currencies.",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                    softWrap: true,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Environment:\nDart Language",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                    ),
                    softWrap: true,
                  ),
          
                  SizedBox(height: 50),
                  
                ],
              ),
            ]),
          ),
        ],
      ),
    );

    return WebLayout(
      webLayout: Row(
        children: <Widget>[
          body,
        ],
      ),
      mobileLayout: Row(
        children: <Widget>[
          body,
        ],
      ),
    );
  }
}
