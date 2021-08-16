import 'package:flutter/material.dart';
import 'package:flutter_onboard/flutter_onboard.dart';

class Aqeel extends StatelessWidget {
  const Aqeel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "images/signuplogo.png",
                fit: BoxFit.cover,
                scale: 0.7,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Welcome to Utopia",
            style: TextStyle(
              fontSize: 30,
              color: Color(0xff7680f5),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Fewer meetings,less internal email,",
            style: TextStyle(
              color: Color(0xff000000),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "all your tools integrated",
            style: TextStyle(
              color: Color(0xff000000),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "images/yaqoob.png",
                fit: BoxFit.cover,
                scale: 0.7,
              ),
            ],
          ),
          MaterialButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            height: 60,
            minWidth: 300,
            color: Color(0xff7680f5),
            onPressed: () {},
            child: Text("Sign up"),
          ),
          SizedBox(
            height: 10,
          ),
          MaterialButton(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: BorderSide(
                color: Color(0xff7680f5),
              ),
            ),
            height: 60,
            minWidth: 300,
            color: Colors.transparent,
            onPressed: () {},
            child: Text(
              "Sign up",
              style: TextStyle(
                color: Color(0xff7680f5),
              ),
            ),
          ),
        
        ],
      ),
    );
  }
}
