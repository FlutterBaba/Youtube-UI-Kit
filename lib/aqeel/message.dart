import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  const Message({Key? key}) : super(key: key);

  Widget singleMessage({required image, required name}) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage("images/$image.jpg"),
              backgroundColor: Colors.white,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff7680f5),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Today at 8:34 PM")
                ],
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                "Lorem Ipsum is simply dummy text\nof the printing and typesetting\nindustry. Lorem Ipsum has been",
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 100,
        child: Row(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.photo),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.photo),
                )
              ],
            ),
            Expanded(
              flex: 2,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Type messaging...",
                  fillColor: Color(0xff626388),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.face),
            )
          ],
        ),
      ),
      drawer: Drawer(),
      backgroundColor: Color(0xff141629),
      appBar: AppBar(
        backgroundColor: Color(0xff282c4a),
        title: Text(" # general"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.people,
            ),
          ),
        ],
      ),
      body: ListView(physics: BouncingScrollPhysics(), children: [
        singleMessage(image: "logo", name: "Saya"),
        singleMessage(image: "logo", name: "Saya"),
        singleMessage(image: "logo", name: "Saya"),
        singleMessage(image: "logo", name: "Saya"),
        singleMessage(image: "logo", name: "Saya"),
        singleMessage(image: "logo", name: "Saya"),
        singleMessage(image: "logo", name: "Saya"),
      ]),
    );
  }
}
