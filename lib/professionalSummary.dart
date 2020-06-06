import 'package:flutter/material.dart';
import 'package:flutter_web_firebase/HomePage.dart';
import 'package:flutter_web_firebase/main.dart';

class ProfessionalSummary extends StatelessWidget {
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
                  Center(child:  Text(
                    "Professional Summary",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                    ),
                    softWrap: true,
                  ),),
              
                  SizedBox(height: 30),
                Text(
                  "• Having 3  years of experience in Software Industry.​\n• 3  years of Experience in iPhone/iPad/Mac Applications development.\n• Proficient with Xcode​ IDE​ and iPhone​ SDK.​\n• Good knowledge in ​ Objective-C​ and Swift languages .\n• Good knowledge on​ Swift UI and Flutter.\n• Good knowledge in integrating Third​ party libraries/API’s.​\n• Experience in publishing​ the app to App Store and TestFlight.​\n• Good knowledge on​ Firebase and socket and BLE.\n• Having strong analytical skills with proficiency in debugging, problem solving.\n• Flexible and versatile to adapt to any new environment and work on any project.\n• Self-motivated and quick learner of new concepts and Technologies.",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
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
