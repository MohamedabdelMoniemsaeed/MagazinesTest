import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(child: Tital("الاخبار")),
                  Expanded(child: Tital("المجلات")),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      child: NameImage("مجلة الطهي", "images/cooking.jpg")),
                  Expanded(
                      child: NameImage("مجلة المحاسبه", "images/Economy.jpg")),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: NameImage("مجلة حواء", "images/Eve.jpg"),
                  ),
                  Expanded(
                    child: NameImage("مجلة الاقتصاد", "images/Knowledge.jpg"),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: NameImage("مجلة الساسه", "images/Politics.jpg"),
                  ),
                  Expanded(
                    child: NameImage("مجلة الرياضة", "images/Sports.jpg"),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child:
                        NameImage("مجلة التكنولوجيا", "images/technology.jpg"),
                  ),
                  Expanded(
                    child: NameImage("مجلة السيارات", "images/thecars.jpg"),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: NameImage("مجلة الصحه", "images/thehealth.png"),
                  ),
                  Expanded(
                    child: NameImage("مجلة السياحه", "images/tourism.jpg"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Tital extends StatelessWidget {
  String name;

  Tital(this.name);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            color: Colors.deepPurple,
          ),
          margin: EdgeInsets.symmetric(vertical: 2, horizontal: 2.5),
          alignment: Alignment.center,
          // width: 175,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          child: Text(
            "$name",
            style: TextStyle(
              fontSize: 19,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

class NameImage extends StatelessWidget {
  String nameImage;
  String pasImage;
  NameImage(this.nameImage, this.pasImage);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 2.5),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
             width: 200,
            height: 120,
            child: Image(
              image: AssetImage("$pasImage"),
              fit: BoxFit.fill,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Color.fromARGB(184, 104, 58, 183),
            ),
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            child: Text(
              "$nameImage",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
