import 'package:flutter/material.dart';
import 'package:flutter_web_firebase/HomePage.dart';

class SkillsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final body = Flexible(
      fit: FlexFit.tight,
      flex: 2,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            child: Opacity(
              opacity: 0.6,
              child: Image.asset(
                'assets/images/intro/footer.png',
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(vertical: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "MY SKILLS",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "iOS Platform",
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          "- Worked on travel platform"
                          "\n- Worked on BLE Projects"
                          "\n- Knowledge of ARkit and Swift UI.",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                          ),
                          softWrap: true,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Flutter Cross Platform",
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          "- Worked on trading app"
                          "\n- Have knowledge of Flutter desktop apps and web apps.",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                          ),
                          softWrap: true,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                ],
              ),
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
         // image,
        ],
      ),
    );
  }
}
