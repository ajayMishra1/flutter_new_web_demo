import 'package:flutter/material.dart';
import 'package:flutter_web_firebase/HomePage.dart';

class WorkPage extends StatelessWidget {
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
            padding: EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "iOS Developer AT",
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
                            'assets/images/work/oneclick.png',
                            height: 40,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Oneclick IT consultancy",
                            style: TextStyle(
                              color: Colors.black87,
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
                          color: Colors.black54,
                          fontSize: 14,
                        ),
                        softWrap: true,
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        "I have 2 and half year of experience in One click it. \n Company's environment is very friendly. \n  It is great experience to work in this company. ",
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                        softWrap: true,
                      ),
                    ],
                  ),
                ),
                
              ],
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
