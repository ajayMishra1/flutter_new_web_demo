import 'package:flutter/material.dart';
import 'package:flutter_web_firebase/HomePage.dart';
import 'package:flutter_web_firebase/main.dart';

class IntroPage extends StatelessWidget {
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
             // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                        child: Text(
                    "Introduction",
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
                  "HELLO, I AM",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Text(
                  "AJAY MISHRA",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "I am senior iOS Developer.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                  ),
                  softWrap: true,
                ),

                SizedBox(height:20),
                    Text(
                  "Objective:\nIntend to build a career with an organization, where in, I can implement my Theoretical, Logical, Technical skills in the practical real life environment with committed & dedicated people, which will help me to explore myself fully and realize my potential, Willing to work as a key player in challenging & creative environment.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  fontWeight: FontWeight.w600

                  ),
                  softWrap: true,
                ),
              ],
            ),
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


