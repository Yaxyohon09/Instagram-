import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:getwidget/getwidget.dart';

class Sahifa1 extends StatefulWidget {
  const Sahifa1({super.key});

  @override
  State<Sahifa1> createState() => _Sahifa1State();
}

class _Sahifa1State extends State<Sahifa1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 100,
          ),
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
          SizedBox(
            height: 50,
          ),
          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                "https://i.pinimg.com/enabled/564x/61/d8/be/61d8beb38b4623db0c5b34573e8243b4.jpg",
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Yxyokhan_08",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GFButton(
            color: Colors.blue,
            onPressed: () {
              Navigator.pushNamed(context, "Sahifa2");
            },
            child: Container(
              height: 65,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  10,
                ),
                color: Colors.blue,
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
            height: 10,
          ),
          Text(
            "Switch accounts",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 180,
          ),
          Container(
            height: 0.5,
            width: double.infinity,
            color: Colors.grey,
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Don't have an account?",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
              Text(
                "Sign up.",
                style: TextStyle(
                  fontSize: 20,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
