import 'package:flutter/material.dart';

class Aqeel11 extends StatelessWidget {
  const Aqeel11({Key? key}) : super(key: key);
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
            child: TextFormField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.search),
                hintText: "Search friend",
                fillColor: Color(0xff626388),
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
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
