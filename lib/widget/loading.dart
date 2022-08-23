import 'package:flutter/material.dart';
import 'package:google_app_installer/widget/custom_clip_path.dart';

class Loading extends StatefulWidget {

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
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
                Image.asset('assets/loading.gif'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}