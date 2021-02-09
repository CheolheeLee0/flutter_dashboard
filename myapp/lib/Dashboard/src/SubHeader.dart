import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubHeader extends StatelessWidget {
  final String title;
  SubHeader({
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.only(
          left: 30,
          right: 30,
          top: 5,
          bottom: 15,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: GoogleFonts.quicksand(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            Text(
              'View All',
              style: GoogleFonts.quicksand(
                fontWeight: FontWeight.bold,
                fontSize: 10,
                color: Colors.black45,
              ),
            ),
            // https://www.youtube.com/watch?v=zLzF2l4ECeE&list=LL&index=1&t=31s&ab_channel=AmIWorthy
            // until 15:00
          ],
        ),
      ),
    );
  }
}
