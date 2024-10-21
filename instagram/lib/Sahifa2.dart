import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:getwidget/getwidget.dart';

class Sahifa2 extends StatefulWidget {
  const Sahifa2({super.key});

  @override
  State<Sahifa2> createState() => _Sahifa1State();
}

class _Sahifa1State extends State<Sahifa2> {
  String email = "yahyo@gmail.com";
  String parol = "20091403";
  TextEditingController emailboshqaruvchi = TextEditingController();
  TextEditingController parolboshqaruvchi = TextEditingController();
  bool name = true;
  bool name1 = true;
  void account() {
    String email1 = emailboshqaruvchi.text.trim();
    String parol1 = parolboshqaruvchi.text.trim();
    setState(() {
      if (email1 == email && parol1 == parol) {
        Navigator.pushNamed(context, "Sahifa3");
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("ERROR: Login or pessword")));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: Text(
              "Instagram",
              style: GoogleFonts.londrinaSketch(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 50,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              controller: emailboshqaruvchi,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              controller: parolboshqaruvchi,
              obscureText: name,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Forgot paswword?",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                width: 17,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          GFButton(
            color: Colors.blue,
            onPressed: () {
              account();
            },
            child: Container(
              height: 70,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
              child: Center(
                child: Text(
                  "Log in",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.facebook,
                color: Colors.blue,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "log in with Facebook",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(
                  10,
                ),
                child: Container(
                  height: 0.5,
                  width: 160,
                  color: Colors.grey,
                ),
              ),
              Text(
                "or",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(
                  10,
                ),
                child: Container(
                  height: 0.5,
                  width: 160,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 150,
          ),
          Padding(
            padding: EdgeInsets.all(
              0,
            ),
            child: Container(
              height: 0.5,
              width: 550,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Center(
            child: Text(
              "Instagram or Faceboook",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
          )
        ],
      ),
    );
  }
}
