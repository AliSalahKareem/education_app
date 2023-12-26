import 'package:education_app/widgets/description_section.dart';
import 'package:education_app/widgets/videos_section.dart';
import 'package:flutter/material.dart';

class CourseScreen extends StatefulWidget {
  final String img; // Make this field final
  CourseScreen(this.img);
  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  bool isVideoSection = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(widget.img,
              style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1)),
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.notifications,
                  color: Color(0xFF674AEF),
                  size: 28,
                ))
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFF5F3FF),
                  image: DecorationImage(
                    image: AssetImage("images/${widget.img}.png"),
                  ),
                ),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: Icon(
                      Icons.play_arrow_rounded,
                      color: Color(0xFF674AEF),
                      size: 45,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Text("${widget.img} complete course",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1)),
              SizedBox(height: 5),
              Text("Create by: Dear Programer",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1)),
              SizedBox(height: 5),
              Text("55 videos",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.5),
                  )),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFF5F3FF),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Material(
                        //
                        color: isVideoSection
                            ? Color(0xFF674AEF)
                            : Color(0xFF674AEF).withOpacity(0.6),
                        borderRadius: BorderRadius.circular(10),
                        child: InkWell(
                            onTap: () {
                              setState(() {
                                isVideoSection = true;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 35, vertical: 15),
                              child: Text("Videos",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white)),
                            ))),
                    Material(
                      color: isVideoSection
                          ? Color(0xFF674AEF).withOpacity(0.6)
                          : Color(0xFF674AEF),
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isVideoSection = false;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 35, vertical: 15),
                          child: Text(
                            "Description",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              isVideoSection ? VideoSection() : DescriptionSection(),
            ],
          ),
        ));
  }
}
