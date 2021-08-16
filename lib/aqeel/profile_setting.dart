import 'package:flutter/material.dart';

class ProfileSetting extends StatelessWidget {
  const ProfileSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2a2e3d),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: 100,
                    color: Color(0xff282c4a),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_back_ios,
                          ),
                        ),
                        Text(
                          "Edit profile settings",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
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
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.edit,
                                color: Color(0xff282c4a),
                              ),
                              Text(
                                "Edit Profile",
                                style: TextStyle(
                                  color: Color(0xff282c4a),
                                ),
                              ),
                            ],
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Profile Picture",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "+ Upload image",
                        style: TextStyle(
                          color: Color(0xff7680f5),
                        ),
                      ),
                      CircleAvatar(
                        radius: 50,
                      ),
                      Text(
                        "Profile Picture",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "+ Upload image",
                        style: TextStyle(
                          color: Color(0xff7680f5),
                        ),
                      ),
                      Container(
                        height: 150,
                        width: 400,
                        decoration: BoxDecoration(
                          color: Color(0xff505b87),
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("images/dotbackground.png"),
                          ),
                        ),
                      ),
                      Text(
                        "Bio",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.edit_outlined,
                            color: Color(0xff7680f5),
                          ),
                          Text(
                            "Add bio",
                            style: TextStyle(
                              color: Color(0xff7680f5),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Text(
              "Tell us about yourself",
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      "Connect",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.edit_outlined,
                          color: Color(0xff7680f5),
                        ),
                        Text(
                          "Add connections",
                          style: TextStyle(
                            color: Color(0xff7680f5),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Color(0xff282c4a),
                  ),
                  child: Column(
                    children: [
                      Icon(
                        Icons.facebook,
                      ),
                      Text("Facebook"),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Color(0xff282c4a),
                  ),
                  child: Column(
                    children: [
                      Icon(
                        Icons.facebook,
                      ),
                      Text("Facebook"),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Color(0xff282c4a),
                  ),
                  child: Column(
                    children: [
                      Icon(
                        Icons.facebook,
                      ),
                      Text("Facebook"),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
