import 'package:flutter/material.dart';

class DescriptionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30, top: 30, right: 30),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2.666,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(70)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Learning is evry thing",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              letterSpacing: 1,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
            "Sed euismod nisi sed libero ultrices, eget blandit velit "
            "tempus. Donec euismod, nisi ac aliquet lobortis, "
            "nunc justo elementum dolor, eget blandit velit "
            "tempus. Donec euismod, nisi ac aliquet lobortis, "
            "nunc justo elementum dolor.",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              letterSpacing: 1,
              height: 1.5,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0XFF674AEF),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(
                  Icons.play_arrow_rounded,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Watch Video",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
