// import 'dart:io';
import 'package:flutter/material.dart';
// import 'package:camera/camera.dart';
// import 'package:path/path.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:permission_handler/permission_handler.dart';
// import 'package:video_player/video_player.dart';
// import 'package:getwidget/getwidget.dart';
import 'dart:ui';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram/Sahifa4.dart';

class Sahifa3 extends StatefulWidget {
  const Sahifa3({super.key});

  @override
  State<Sahifa3> createState() => _Sahifa3State();
}

class _Sahifa3State extends State<Sahifa3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          // CameraApp(),
          Sahifa(),
          Sahifa4(),
        ],
      ),
    );
  }
}

// class CameraApp extends StatefulWidget {
//   @override
//   _CameraAppState createState() => _CameraAppState();
// }

// class _CameraAppState extends State<CameraApp> {  
//   CameraController? _controller;
//   List<CameraDescription>? _cameras;
//   bool _isRecording = false;

//   @override
//   void initState() {
//     super.initState();
//     _initializeCamera();
//   }

//   // Kamera ruxsatini so'rash va kamerani ishga tushirish
//   Future<void> _initializeCamera() async {
//     final cameraPermission = await Permission.camera.request();
//     if (cameraPermission != PermissionStatus.granted) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Kamera uchun ruxsat talab qilinmoqda')),
//       );
//       return;
//     }

//     _cameras = await availableCameras();
//     _controller = CameraController(
//       _cameras![0], // Old kamera yoki asosiy kamera
//       ResolutionPreset.high,
//     );

//     await _controller!.initialize();
//     setState(() {});
//   }

//   // Rasm olish
//   Future<void> _takePicture() async {
//     if (_controller == null || !_controller!.value.isInitialized) return;

//     try {
//       final directory = await getTemporaryDirectory();
//       final path = join(directory.path, '${DateTime.now()}.png');
//       await _controller!.takePicture().then((XFile file) {
//         if (mounted) {
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(content: Text('Rasm saqlandi: ${file.path}')),
//           );
//         }
//       });
//     } catch (e) {
//       debugPrint('Rasm olishda xato: $e');
//     }
//   }

//   // Videoni yozib olishni boshlash
//   Future<void> _startRecording() async {
//     if (_controller == null || !_controller!.value.isInitialized) return;

//     try {
//       final directory = await getTemporaryDirectory();
//       final path = join(directory.path, '${DateTime.now()}.mp4');
//       await _controller!.startVideoRecording();
//       setState(() {
//         _isRecording = true;
//       });
//     } catch (e) {
//       debugPrint('Video yozishda xato: $e');
//     }
//   }

//   // Videoni to'xtatish va saqlash
//   Future<void> _stopRecording() async {
//     if (_controller == null || !_controller!.value.isRecordingVideo) return;

//     try {
//       final video = await _controller!.stopVideoRecording();
//       setState(() {
//         _isRecording = false;
//       });

//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Video saqlandi: ${video.path}')),
//       );
//     } catch (e) {
//       debugPrint('Video to\'xtatishda xato: $e');
//     }
//   }

//   @override
//   void dispose() {
//     _controller?.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Kamera Dasturi'),
//       ),
//       body: _controller == null || !_controller!.value.isInitialized
//           ? const Center(child: CircularProgressIndicator())
//           : Column(
//               children: [
//                 AspectRatio(
//                   aspectRatio: _controller!.value.aspectRatio,
//                   child: CameraPreview(_controller!),
//                 ),
//                 const SizedBox(height: 10),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     ElevatedButton(
//                       onPressed: _takePicture,
//                       child: const Text('Rasm olish'),
//                     ),
//                     ElevatedButton(
//                       onPressed:
//                           _isRecording ? _stopRecording : _startRecording,
//                       child: Text(_isRecording ? 'To\'xtatish' : 'Video olish'),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//     );
//   }
// }

class Sahifa extends StatefulWidget {
  const Sahifa({super.key});

  @override
  State<Sahifa> createState() => _SahifaState();
}

class _SahifaState extends State<Sahifa> {
  int select = 0;
  List<Widget> sahifalar = [
    nom1(),
    nom8(),
    nom3(),
    nom4(),
    nom5(),
  ];
  void boss(int index) {
    setState(() {
      select = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: sahifalar.elementAt(select)),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "home",
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "search",
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.add),
                label: "",
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined),
                label: "reals",
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined),
                label: "account",
                backgroundColor: Colors.white),
          ],
          currentIndex: select,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.blue,
          selectedFontSize: 15,
          onTap: boss,
        ));
  }
}

class nom1 extends StatefulWidget {
  const nom1({super.key});

  @override
  State<nom1> createState() => _Nom1State();
}

class _Nom1State extends State<nom1> {
  List<C> nom = [
    C(
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLQ_A-p8w7EhdB1R_gSgw6-FCwQuFrMGbmFA&s",
        text: "Your story"),
    C(
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmtDs-eV_GvUiiXbduVhFYfzangGLpByaAHg&s",
        text: "Aslamboy"),
    C(
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlRhNLFUasxqPRz3-VYN0ZF6cNYuW_H7dV-C&s",
        text: "mr_beast"),
    C(
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqEoVRL9xJuQdhPr9pHnTDHcA3J6KnRr3f1w&s",
        text: "Donyor_Q"),
    C(
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9y2pceGLbjimHA3VcC09PpxYT-U99udHLMA&s",
        text: "Cristiano_R"),
    C(
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkrDF8Bt3MQi3QOyAdsOwJ4ZDOh8tfATq1_g&s",
        text: "Messi"),
    C(
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRa1Wyw4eRh1G8QdUiMP73gWmJFEHR4Rjcf8g&s",
        text: "Komol_Q"),
    C(
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0CSv3Iy1nhEHCr1qkHHlkfb9lRUMKJNsubA&s",
        text: "Cardinal"),
    C(
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm2BakNxU-aEcNo-DHTu8lJcSmma1z94_utg&s",
        text: "Yakudza"),
    C(
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxYnDjTXOaNmfV87mI-Gvp0zyAQFDfdDp6yg&s",
        text: "Cenator"),
    C(
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYNc-nxCd4TECXfoUY4QmraS_5H-uoDcC14A&s",
        text: "nizamo_s"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildHeader(),
                SizedBox(height: 10),
                _buildHorizontalScroll(),
                Divider(color: Colors.grey[400]),
                SizedBox(height: 10),
                _buildPost(
                  username: "nizamo_s",
                  imageUrl:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYNc-nxCd4TECXfoUY4QmraS_5H-uoDcC14A&s",
                ),
                SizedBox(height: 10),
                Divider(color: Colors.grey[400]),
                SizedBox(height: 10),
                _buildPost(
                  username: "nizamo_s",
                  imageUrl:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlRhNLFUasxqPRz3-VYN0ZF6cNYuW_H7dV-C&s",
                ),
                SizedBox(height: 10),
                Divider(color: Colors.grey[400]),
                SizedBox(height: 10),
                _buildPost(
                  username: "nizamo_s",
                  imageUrl:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9y2pceGLbjimHA3VcC09PpxYT-U99udHLMA&s",
                ),
                SizedBox(height: 20),
                Divider(color: Colors.grey[400]),
                _buildPost(
                  username: "Yakudza",
                  imageUrl:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm2BakNxU-aEcNo-DHTu8lJcSmma1z94_utg&s",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        SizedBox(width: 10),
        Text(
          "Instagram",
          style: GoogleFonts.londrinaSketch(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(),
        IconButton(
          onPressed: () => print("Add pressed"),
          icon: Icon(Icons.add_box_outlined, color: Colors.black),
        ),
        IconButton(
          onPressed: () => print("Favorite pressed"),
          icon: Icon(Icons.favorite_border_sharp, color: Colors.black),
        ),
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, "Sahifa4");
          },
          icon: Icon(Icons.messenger_outline_rounded, color: Colors.black),
        ),
      ],
    );
  }

  Widget _buildHorizontalScroll() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: nom.map((item) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyWidget(salom: item),
                ),
              );
            },
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.pink,
                    child: CircleAvatar(
                      radius: 42,
                      backgroundImage: NetworkImage(item.img ?? ""),
                    ),
                  ),
                ),
                Text(item.text ?? ""),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildPost({required String username, required String imageUrl}) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(width: 10),
            CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
              radius: 20,
            ),
            SizedBox(width: 10),
            Text(username),
            Spacer(),
            Text(
              "...",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Divider(color: Colors.grey[400]),
        SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            height: 270,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.favorite_border_sharp, size: 30),
                SizedBox(width: 10),
                Icon(Icons.comment_rounded, size: 30),
                SizedBox(width: 10),
                Icon(Icons.telegram_rounded, size: 30),
              ],
            ),
            Icon(Icons.bookmark_border, size: 25),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Liked by kyia_kayaks and others"),
              Row(
                children: [
                  Text("princess_peace Sunday sunshine."),
                  SizedBox(width: 5),
                  Text(
                    "#weekendvibes",
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(color: Colors.grey[400]),
      ],
    );
  }
}

class C {
  String? img;
  String? text;
  C({this.img, this.text});
}

class MyWidget extends StatelessWidget {
  final C salom;
  const MyWidget({super.key, required this.salom});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: 720,
            width: 500,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  salom.img ?? "",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 35,
                ),
                Container(
                  height: 1,
                  width: 500,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(salom.img ?? ""),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      salom.text ?? "",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    BackButton(
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.camera_alt_outlined,
                ),
                labelText: "Send Message",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    50,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class nom8 extends StatefulWidget {
  const nom8({super.key});

  @override
  State<nom8> createState() => _nom8State();
}

class _nom8State extends State<nom8> {
  List nomo = [
    M(
        rasmes:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBqZtzsw4xr8QAwR5j3zr1VDf8MA36AlOF48ov56CfTuFUgiHoOGVyGyuTheKq90h3_ok&usqp=CAU"),
    M(
        rasmes:
            "https://steamuserimages-a.akamaihd.net/ugc/999178538940429652/8A9738143A0E955E2AB55B6A40B0EF8C6256C722/?imw=637&imh=358&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=true"),
    M(
        rasmes:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiVEDUhxsmRonNAugaKv5dI0BhzQxYf--9GQ&s"),
    M(
        rasmes:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWZQt-xgkwAjjI_t-pUdicBOgJyIWoUR7TJg&s"),
    M(rasmes: "https://media.tenor.com/fCy1I9Lzv5YAAAAM/nojin.gif"),
    M(
        rasmes:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMX7UMM4PrxlEjv7sue3NBrCv3qG0V8EAM3w&s"),
    M(rasmes: "https://media.tenor.com/zOFMoERHogsAAAAM/telugu-balayya.gif"),
    M(rasmes: "https://media.tenor.com/8qAaLbtWxXgAAAAM/pubg-pubg-mobile.gif"),
    M(
        rasmes:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxzfe7noQ91a-vbwsBhYSiNes34Lvz44cAwQ&s"),
    M(
        rasmes:
            "https://steamuserimages-a.akamaihd.net/ugc/999178538940429652/8A9738143A0E955E2AB55B6A40B0EF8C6256C722/?imw=637&imh=358&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=true"),
    M(
        rasmes:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxzfe7noQ91a-vbwsBhYSiNes34Lvz44cAwQ&s"),
    M(rasmes: "https://media.tenor.com/fCy1I9Lzv5YAAAAM/nojin.gif"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.only(
                  top: 25,
                  bottom: 25,
                  left: 20,
                  right: 20,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "search",
                    hintStyle: TextStyle(
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                    ),
                    prefixIconColor: Colors.grey.withOpacity(0.5),
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Wrap(
              children: nomo.map((w) => wijet(w)).toList(),
            )
          ],
        ),
      ),
    );
  }
}

class M {
  String? rasmes;
  M({this.rasmes});
}

Widget wijet(w) {
  return Container(
    height: 120,
    width: 120,
    decoration: BoxDecoration(
      image: DecorationImage(image: NetworkImage(w.rasmes), fit: BoxFit.cover),
    ),
  );
}

class nom3 extends StatefulWidget {
  const nom3({super.key});

  @override
  State<nom3> createState() => _nom3State();
}

class _nom3State extends State<nom3> {
  String tanlov = "To'lov";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.clear,
                color: Colors.white,
              ),
              SizedBox(
                width: 80,
              ),
              Text(
                "New videos Reels",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                width: 60,
              ),
              Icon(
                Icons.settings_outlined,
                color: Colors.white,
                size: 25,
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 120,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.white,
                          size: 50,
                        )),
                        Center(
                          child: Text(
                            "Camera",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 120,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: Icon(
                          Icons.gif_box_outlined,
                          color: Colors.white,
                          size: 50,
                        )),
                        Center(
                          child: Text(
                            "gif",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 120,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: Icon(
                          Icons.add_to_photos_outlined,
                          color: Colors.white,
                          size: 50,
                        )),
                        Center(
                          child: Text(
                            "sample",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 120,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: Icon(
                          Icons.generating_tokens,
                          color: Colors.white,
                          size: 50,
                        )),
                        Center(
                          child: Text(
                            "especially",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        Center(
                          child: Text(
                            "for you",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                "recent",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              Icon(
                Icons.keyboard_arrow_down_outlined,
                color: Colors.white,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Wrap(
            children: [
              Padding(
                padding: const EdgeInsets.all(1),
                child: Container(
                  height: 145,
                  width: 120,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLQ_A-p8w7EhdB1R_gSgw6-FCwQuFrMGbmFA&s"),
                          fit: BoxFit.cover)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 9,
                          backgroundColor: Colors.grey.withOpacity(0.2),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(1),
                child: Container(
                  height: 145,
                  width: 120,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLQ_A-p8w7EhdB1R_gSgw6-FCwQuFrMGbmFA&s"),
                          fit: BoxFit.cover)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 9,
                          backgroundColor: Colors.grey.withOpacity(0.2),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(1),
                child: Container(
                  height: 145,
                  width: 120,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLQ_A-p8w7EhdB1R_gSgw6-FCwQuFrMGbmFA&s"),
                          fit: BoxFit.cover)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 9,
                          backgroundColor: Colors.grey.withOpacity(0.2),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(1),
                child: Container(
                  height: 145,
                  width: 120,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLQ_A-p8w7EhdB1R_gSgw6-FCwQuFrMGbmFA&s"),
                          fit: BoxFit.cover)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 9,
                          backgroundColor: Colors.grey.withOpacity(0.2),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(1),
                child: Container(
                  height: 145,
                  width: 120,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLQ_A-p8w7EhdB1R_gSgw6-FCwQuFrMGbmFA&s"),
                          fit: BoxFit.cover)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 9,
                          backgroundColor: Colors.grey.withOpacity(0.2),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(1),
                child: Container(
                  height: 145,
                  width: 120,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLQ_A-p8w7EhdB1R_gSgw6-FCwQuFrMGbmFA&s"),
                          fit: BoxFit.cover)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 9,
                          backgroundColor: Colors.grey.withOpacity(0.2),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(1),
                child: Container(
                  height: 145,
                  width: 120,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLQ_A-p8w7EhdB1R_gSgw6-FCwQuFrMGbmFA&s"),
                          fit: BoxFit.cover)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 9,
                          backgroundColor: Colors.grey.withOpacity(0.2),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(1),
                child: Container(
                  height: 145,
                  width: 120,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLQ_A-p8w7EhdB1R_gSgw6-FCwQuFrMGbmFA&s"),
                          fit: BoxFit.cover)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 9,
                          backgroundColor: Colors.grey.withOpacity(0.2),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class nom4 extends StatefulWidget {
  const nom4({super.key});

  @override
  State<nom4> createState() => _nom4State();
}

class _nom4State extends State<nom4> {
  bool see = true;
  bool sui = true;
  String tanlov = "to'lov";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 750,
              width: 665,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://steamuserimages-a.akamaihd.net/ugc/999178538940429652/8A9738143A0E955E2AB55B6A40B0EF8C6256C722/?imw=637&imh=358&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=true"),
                    fit: BoxFit.cover),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        DropdownButton(
                            dropdownColor: Colors.black,
                            value: tanlov,
                            items: [
                              DropdownMenuItem(
                                value: "to'lov",
                                child: Text(
                                  "Reels",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                              ),
                              DropdownMenuItem(
                                value: "naqt",
                                child: Text(
                                  "Search",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                              ),
                              DropdownMenuItem(
                                value: "karta",
                                child: Text(
                                  "Menu",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                              ),
                            ],
                            onChanged: (String? newvalue) {
                              setState(() {
                                tanlov = newvalue!;
                              });
                            }),
                        SizedBox(
                          width: 250,
                        ),
                        Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 240,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 250,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                CircleAvatar(
                                  radius: 21,
                                  backgroundColor: Colors.pink,
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://steamuserimages-a.akamaihd.net/ugc/999178538940429652/8A9738143A0E955E2AB55B6A40B0EF8C6256C722/?imw=637&imh=358&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=true"),
                                    radius: 20,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "bot_pubgm",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 30,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.grey,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                      child: Text(
                                    "Follow",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  )),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Obuna bulamiz",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 0,
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                      sigmaX: 2,
                                      sigmaY: 2,
                                    ),
                                    child: Container(
                                      height: 40,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.grey.withOpacity(0.3),
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 0,
                                          ),
                                          Icon(
                                            Icons.music_note_sharp,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Original audio",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                      sigmaX: 2,
                                      sigmaY: 2,
                                    ),
                                    child: Container(
                                      height: 40,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.grey.withOpacity(0.3),
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Icon(
                                            Icons.audiotrack_rounded,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Original audio",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        see = !see;
                                      });
                                    },
                                    icon: Icon(
                                      see
                                          ? Icons.favorite_border
                                          : Icons.favorite,
                                      color: see ? Colors.white : Colors.red,
                                    )),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "1m",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.comment_outlined,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "1k",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.send,
                                      color: Colors.white,
                                      size: 30,
                                    )),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "12k",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "...",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 2,
                                      color: Colors.white,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://steamuserimages-a.akamaihd.net/ugc/999178538940429652/8A9738143A0E955E2AB55B6A40B0EF8C6256C722/?imw=637&imh=358&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=true"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 750,
              width: 665,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://mir-s3-cdn-cf.behance.net/project_modules/disp/677cd375946205.5c5b59cba0b69.gif"),
                    fit: BoxFit.cover),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        DropdownButton(
                            dropdownColor: Colors.black,
                            value: tanlov,
                            items: [
                              DropdownMenuItem(
                                value: "to'lov",
                                child: Text(
                                  "Reels",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                              ),
                              DropdownMenuItem(
                                value: "naqt",
                                child: Text(
                                  "Search",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                              ),
                              DropdownMenuItem(
                                value: "karta",
                                child: Text(
                                  "Menu",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                              ),
                            ],
                            onChanged: (String? newvalue) {
                              setState(() {
                                tanlov = newvalue!;
                              });
                            }),
                        SizedBox(
                          width: 250,
                        ),
                        Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 270,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 250,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 5,
                                ),
                                CircleAvatar(
                                  radius: 21,
                                  backgroundColor: Colors.pink,
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://mir-s3-cdn-cf.behance.net/project_modules/disp/677cd375946205.5c5b59cba0b69.gif"),
                                    radius: 20,
                                  ),
                                ),
                                SizedBox(
                                  width: 0,
                                ),
                                Text(
                                  "MR_ITishnik",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 30,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.grey,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                      child: Text(
                                    "Follow",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  )),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 0,
                                ),
                                Text(
                                  "Obuna bulamiz",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 0,
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                      sigmaX: 2,
                                      sigmaY: 2,
                                    ),
                                    child: Container(
                                      height: 40,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.grey.withOpacity(0.3),
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Icon(
                                            Icons.music_note_sharp,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Original audio",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                      sigmaX: 2,
                                      sigmaY: 2,
                                    ),
                                    child: Container(
                                      height: 40,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.grey.withOpacity(0.3),
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Icon(
                                            Icons.audiotrack_rounded,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Original audio",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 0,
                            ),
                            Column(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        sui = !sui;
                                      });
                                    },
                                    icon: Icon(
                                      sui
                                          ? Icons.favorite_border
                                          : Icons.favorite,
                                      color: sui ? Colors.white : Colors.red,
                                    )),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "1m",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.comment_outlined,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "1k",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.send,
                                      color: Colors.white,
                                      size: 30,
                                    )),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "12k",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "...",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 2,
                                      color: Colors.white,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://mir-s3-cdn-cf.behance.net/project_modules/disp/677cd375946205.5c5b59cba0b69.gif"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    )
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

class nom5 extends StatefulWidget {
  const nom5({super.key});

  @override
  State<nom5> createState() => _nom5State();
}

class _nom5State extends State<nom5> {
  String tanlov = "to'lov";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                BackButton(),
                SizedBox(
                  width: 60,
                ),
                Column(
                  children: [
                    Text(
                      "Group Profile",
                      style: TextStyle(fontSize: 25),
                    ),
                    Text(
                      "Cold_everyday",
                      style: TextStyle(
                        color: Colors.grey.withOpacity(0.8),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 60,
                ),
                Icon(
                  Icons.menu,
                )
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.pink,
                  child: CircleAvatar(
                    radius: 58,
                    child: CircleAvatar(
                      radius: 55,
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyNJCMsU0xEjwTEC993RcU1X5Sf2hW0WmA9Q&s"),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text(
                      "100",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("Posts"),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text(
                      "10.5m",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("Members"),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text(
                      "777",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("Admins"),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("OOTD Everday"),
                    Text("Fit check!"),
                    Text("You know we'll hype you up")
                  ],
                )
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
                child: Center(
                  child: DropdownButton(
                      dropdownColor: Colors.white,
                      focusColor: Colors.white,
                      value: tanlov,
                      items: [
                        DropdownMenuItem(
                          value: "to'lov",
                          child: Text(
                            "Member",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 30),
                          ),
                        ),
                        DropdownMenuItem(
                          value: "naqt",
                          child: Text(
                            "Photo",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 30),
                          ),
                        ),
                      ],
                      onChanged: (String? newvalue) {
                        setState(() {
                          tanlov = newvalue!;
                        });
                      }),
                ),
              ),
            ),
            Wrap(
              children: [
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyNJCMsU0xEjwTEC993RcU1X5Sf2hW0WmA9Q&s",
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyNJCMsU0xEjwTEC993RcU1X5Sf2hW0WmA9Q&s",
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyNJCMsU0xEjwTEC993RcU1X5Sf2hW0WmA9Q&s",
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyNJCMsU0xEjwTEC993RcU1X5Sf2hW0WmA9Q&s",
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyNJCMsU0xEjwTEC993RcU1X5Sf2hW0WmA9Q&s",
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyNJCMsU0xEjwTEC993RcU1X5Sf2hW0WmA9Q&s",
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyNJCMsU0xEjwTEC993RcU1X5Sf2hW0WmA9Q&s",
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyNJCMsU0xEjwTEC993RcU1X5Sf2hW0WmA9Q&s",
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyNJCMsU0xEjwTEC993RcU1X5Sf2hW0WmA9Q&s",
                        ),
                        fit: BoxFit.cover),
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
