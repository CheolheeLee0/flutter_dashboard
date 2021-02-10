import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SharedFilesItem extends StatefulWidget {
  final String sharedFileName;
  final Color color;
  final String members;
  final String et;
  final String fileSize;

  SharedFilesItem({
    this.color,
    this.et,
    this.fileSize,
    this.members,
    this.sharedFileName,
  });

  @override
  _SharedFilesItemState createState() => _SharedFilesItemState();
}

class _SharedFilesItemState extends State<SharedFilesItem> {
  bool hovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (value) {
        setState(() {
          hovered = true;
        });
      },
      onExit: (value) {
        setState(() {
          hovered = false;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 275),
        margin: EdgeInsets.only(bottom: 10, left: 40, right: 15),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: hovered
                ? [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 13,
                      spreadRadius: 0,
                    ),
                  ]
                : []),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 28,
                        width: 28,
                        decoration: BoxDecoration(
                          color: widget.color.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.folder,
                            color: widget.color,
                            size: 15,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        widget.sharedFileName,
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Text(
                          widget.members,
                          style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                            color: Colors.black45,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Text(
                          widget.et,
                          style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                            color: Colors.black45,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Text(
                          widget.fileSize,
                          style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
