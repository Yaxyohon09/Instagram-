import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class Sahifa4 extends StatefulWidget {
  const Sahifa4({super.key});

  @override
  State<Sahifa4> createState() => _Sahifa9State();
}

class _Sahifa9State extends State<Sahifa4> {
  List noob1 = [
    V(
      ism:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmtDs-eV_GvUiiXbduVhFYfzangGLpByaAHg&s",
      youz: "Aslamboy",
      text: "вы: go 1v1 m24",
    ),
    V(
      ism:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlRhNLFUasxqPRz3-VYN0ZF6cNYuW_H7dV-A&s",
      youz: "mr_beast",
      text: "вы: how are you mrbeast",
    ),
    V(
      ism:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLIO8IF0986os483vj3BW2RCbcOS--gFOadA&s",
      youz: "isom TV",
      text: "вы: qoraqalpoqa bordizmi?",
    ),
    V(
      ism:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0CSv3Iy1nhEHCr1qkHHlkfb9lRUMKJNsubA&s",
      youz: "Cardinal",
      text: "вы: 100k mubore",
    ),
    V(
      ism:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm2BakNxU-aEcNo-DHTu8lJcSmma1z94_utg&s",
      youz: "Yakudza",
      text: "вы: strim qachan qilamiz?",
    ),
  ];
  bool see = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                BackButton(),
                Text(
                  "_MR_IT ISHNIK_YAHYOHON_",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.keyboard_arrow_down_outlined),
                Icon(
                  Icons.camera_alt_rounded,
                ),
                Icon(Icons.add_comment_rounded),
              ],
            ),
            Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  obscureText: see,
                  decoration: InputDecoration(
                    label: Text("search"),
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          see = !see;
                        });
                      },
                      icon: Icon(Icons.search),
                    ),
                  ),
                )),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: noob1.map((s) => noob(s)).toList(),
              ),
            ),
            SingleChildScrollView(
              // scrollDirection: Axis.horizontal,
              child: Column(
                children: noob1.map((item) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyWidget(salom: item),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                  item.ism,
                                ),
                                radius: 27,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item.youz,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  Text(
                                    item.text ?? "",
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 60,
                              ),
                              Icon(Icons.camera_alt_outlined),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class V {
  String? ism;
  String? youz;
  String? text;
  V({this.ism, this.text, this.youz});
}

Widget noob(s) {
  return Row(
    children: [
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                s.ism,
              ),
            ),
          ),
          Text(s.youz)
        ],
      )
    ],
  );
}

class MyWidget extends StatelessWidget {
  final salom;
  const MyWidget({super.key, required this.salom});

  @override
  Widget build(BuildContext context) {
    TextEditingController qiymat = TextEditingController();
    String nom = "";
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
        title: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    salom.ism ?? "",
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  salom.youz ?? "",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 80,
                ),
                Icon(
                  Icons.call_outlined,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.videocam_outlined,
                  color: Colors.white,
                ),
              ],
            ),
            Container(
              height: 1,
              width: double.infinity,
              color: Colors.white,
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 430,
            ),
            Text(
              nom,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 40,
                child: TextField(
                  controller: qiymat,
                  decoration: InputDecoration(
                    hintText: "Write messages...",
                    hintStyle: TextStyle(
                      color: Colors.grey.withOpacity(
                        0.5,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    suffix: IconButton(
                      onPressed: () {
                        qiymat.clear();
                      },
                      icon: Icon(
                        Icons.clear,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class boshqav extends StatefulWidget {
  const boshqav({super.key});

  @override
  State<boshqav> createState() => _boshqavState();
}

class _boshqavState extends State<boshqav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
