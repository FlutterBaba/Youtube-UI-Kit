import 'package:flutter/material.dart';

class OnlineFirend extends StatefulWidget {
  const OnlineFirend({Key? key}) : super(key: key);

  @override
  _OnlineFirendState createState() => _OnlineFirendState();
}

class _OnlineFirendState extends State<OnlineFirend> {
  bool istrue = false;
  Widget fiends() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    radius: 30,
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
            ),
            Text("Admin Chat")
          ],
        ),
        Divider()
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff141629),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text("Friends"),
        leading: Icon(Icons.person),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
              ))
        ],
      ),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(12.0),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  color: Color(0xff7680f5),
                  child: Text("Add Friend"),
                  onPressed: () {},
                ),
                Container(
                  height: 30,
                  width: 4,
                  color: Colors.blueGrey,
                ),
                Container(
                  width: 300,
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: MaterialButton(
                          height: double.infinity,
                          color: istrue ? Color(0xff626388) : Colors.white,
                          child: Text(
                            "Online",
                            style: TextStyle(
                              color: istrue ? Colors.white : Color(0xff626388),
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              istrue = false;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: MaterialButton(
                          height: double.infinity,
                          color: istrue ? Colors.white : Color(0xff626388),
                          onPressed: () {
                            setState(() {
                              istrue = true;
                            });
                          },
                          child: Text(
                            "All",
                            style: TextStyle(
                              color: istrue ? Colors.black : Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: CircleAvatar(
                    backgroundColor: Color(0xff33394f),
                    child: Icon(
                      Icons.search,
                    ),
                  ),
                )
              ],
            ),
          ),
          fiends(),
          fiends(),
          fiends(),
          fiends(),
          fiends(),
          fiends(),
          fiends(),
        ],
      )),
    );
  }
}
