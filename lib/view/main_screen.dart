import 'package:flutter/material.dart';
import 'package:google_app_installer/widget/custom_clip_path.dart';
import 'package:google_app_installer/widget/loading.dart';

class MainScreen extends StatefulWidget {

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD9EEDF),
      body: SafeArea(
        child: ClipPath(
          clipper: CustomClipPath(),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            color: Colors.white,
            height: MediaQuery.of(context).size.height * 0.98,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "G",
                        style: TextStyle(
                          color: Color(0xFF547DBF),
                          fontSize: 70
                        )
                      ),
                      TextSpan(
                        text: "o",
                        style: TextStyle(
                          color: Color(0xFFEB4334),
                          fontSize: 70
                        )
                      ),
                      TextSpan(
                        text: "o",
                        style: TextStyle(
                          color: Color(0xFFFBBC10),
                          fontSize: 70
                        )
                      ),
                      TextSpan(
                        text: "g",
                        style: TextStyle(
                          color: Color(0xFF547DBF),
                          fontSize: 70
                        )
                      ),
                      TextSpan(
                        text: "l",
                        style: TextStyle(
                          color: Color(0xFF30A952),
                          fontSize: 70
                        )
                      ),
                      TextSpan(
                        text: "e",
                        style: TextStyle(
                          color: Color(0xFFEB4334),
                          fontSize: 70
                        )
                      ),
                    ]
                  ),
                ),
                SizedBox(height: 5,),
                Text(
                  'Get All Apps',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 60,),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                    child: Text(
                      'Start Install',
                      style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 1.0
                      ),
                    ),
                    color: Color(0xFF4870B6),
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    elevation: 0,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Loading()));
                    },
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                    child: Text(
                      'Basic Google Services',
                      style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 1.0
                      ),
                    ),
                    color: Color(0xFF4870B6),
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    elevation: 0,
                    onPressed: () {
                      print('Basic Google Services');
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class CustomClipPath extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     double w = size.width;
//     double h = size.height;

//     Path path = Path();
//     path.moveTo( 0, h * 0.2 );
//     path.lineTo( 0, h);
//     path.quadraticBezierTo( w * 0.5, h - h* 0.2 , w  , h - h* 0.2);
//     path.lineTo( w, 0 );
//     path.quadraticBezierTo(w * 0.5, h* 0.2 , 0 , h* 0.2);
//     path.close();

//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     return false;
//   }

// }