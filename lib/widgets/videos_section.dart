import 'package:flutter/material.dart';

class VideoSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFFF5F3FF),
        image: DecorationImage(
          image: AssetImage("images/1.png"),
        ),
      ),
      child: Center(
        child: Container(
          decoration:
              BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          child: Icon(
            Icons.play_arrow_rounded,
            color: Color(0xFF674AEF),
            size: 45,
          ),
        ),
      ),
    );
  }
}
