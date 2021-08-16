import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Aqeel111 extends StatefulWidget {
  const Aqeel111({Key? key}) : super(key: key);
  @override
  _Aqeel111State createState() => _Aqeel111State();
}

class _Aqeel111State extends State<Aqeel111> {
  bool _switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff141629),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Column(
                      children: [
                        Expanded(
                          child: Container(
                            color: Color(0xff505b87),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Join Wick",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "@joinwick",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage("images/logo.jpg"),
                          ),
                          Positioned(
                            bottom: 10,
                            right: 2,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 7,
                              child: CircleAvatar(
                                radius: 5,
                                backgroundColor: Colors.green,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Container(
                    height: 100,
                    color: Color(0xff282c4a),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MaterialButton(
                          elevation: 0,
                          color: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          child: Row(
                            children: [Icon(Icons.settings), Text("Account")],
                          ),
                          onPressed: () {},
                        ),
                        MaterialButton(
                          elevation: 0,
                          color: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.edit),
                              Text("Edit Profile"),
                            ],
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.all(3),
                    alignment: Alignment.topLeft,
                    height: 80,
                    width: double.infinity,
                    color: Color(0xff1c203a),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            "About me",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text("No Information"),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(3),
                    alignment: Alignment.topLeft,
                    height: 80,
                    width: double.infinity,
                    color: Color(0xff1c203a),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            "About me",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text("No Information"),
                          trailing: CupertinoSwitch(
                            activeColor: Color(0xff7680f5),
                            value: _switchValue,
                            onChanged: (value) {
                              setState(() {
                                _switchValue = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(3),
                    alignment: Alignment.topLeft,
                    height: 80,
                    width: double.infinity,
                    color: Color(0xff1c203a),
                    child: Column(
                      children: [
                        ListTile(
                          title: Row(
                            children: [
                              Text(
                                "About me",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                "More options",
                                style: TextStyle(color: Color(0xff7680f5)),
                              ),
                            ],
                          ),
                          subtitle: Text("No Information"),
                          trailing: CupertinoSwitch(
                            activeColor: Color(0xff7680f5),
                            value: _switchValue,
                            onChanged: (value) {
                              setState(() {
                                _switchValue = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      minWidth: 200,
                      color: Color(0xff7680f5),
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.exit_to_app),
                          Text("Sign out"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
