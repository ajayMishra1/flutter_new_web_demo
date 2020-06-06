

import 'package:flutter/material.dart';
import 'package:flutter_web_firebase/HomePage.dart';
import 'package:flutter_web_firebase/main.dart';

class PersonalDetails extends StatelessWidget {
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
            child: ListView(
              children: <Widget>[
                Column(
              crossAxisAlignment: CrossAxisAlignment.start,
               children: <Widget>[
                    Center(child: Text(
                    "Personal Details",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                    ),
                    softWrap: true,
                  ),),
              
                  SizedBox(height: 30),
                Text(
 "Father’s Name		:	Rajkishor Mishra\nMother’s Name              :       Asha Mishra\nDate of Birth		        :      09-July-1996\nGender		         	:	MALE\nLanguages Known	:	English, Hindi, Gujarati\nNationality		        :	INDIAN"
                  , style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  softWrap: true,
                ),

                SizedBox(height: 50),
                 Text(
                        "Contact Details:",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                        softWrap: true,
                      ),

                      SizedBox(height: 10),
                 Text(
                        "Email:\n• mishraajay9898@gmail.com\nMobile:\n• 9265701475",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                        softWrap: true,
                      ),
              ],
            ),
              ]),
  ), ],
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
