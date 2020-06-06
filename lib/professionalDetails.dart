import 'package:flutter/material.dart';
import 'package:flutter_web_firebase/HomePage.dart';
import 'package:flutter_web_firebase/main.dart';

class ProfessionalDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final body = Flexible(
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
       //  Positioned.fill(child: Particles(30)),

          Container(
            padding: EdgeInsets.all(32),
            child: ListView(
              children: <Widget>[
                            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Center(child:  Text(
                    "Professional Details",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                    ),
                    softWrap: true,
                  ),),
              
                  SizedBox(height: 30),
                      Text(
                        "Senior iOS Developer AT",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Image.asset(
                            'assets/images/oneclick.png',
                            height: 40,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Oneclick IT consultancy",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                        softWrap: true,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "I have 3 years of experience in One click it consultancy. ",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                        softWrap: true,
                      ),
                    ],
                  ),
               ]
                ),
          
          
                      ),
         ],
      ),
    );
  
    return WebLayout(
      mobileLayout: Row(
        children: <Widget>[
          body,
        ],
      ),
      webLayout: Row(
        children: <Widget>[
          body,
        ],
      ),
    );
  }
}