import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/Dashboard/src/ProjectProgressCard.dart';
import 'package:myapp/Dashboard/src/SubHeader.dart';

import 'src/Tabs.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 100.0,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * 0.63,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 30.0, top: 25.0, bottom: 10.0),
              child: Text(
                'Ongoing Projects',
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
            Tabs(),
            Container(
              margin: EdgeInsets.only(top: 5.0),
              height: 200.0,
              width: MediaQuery.of(context).size.width * 0.62,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ProjectProgressCard(
                    color: Color(0xffFF4C60),
                    projectName: 'The Maptrix',
                    percentComplete: '34%',
                    progressIndicatorColor: Colors.redAccent,
                    icon: FeatherIcons.moon,
                  ),
                  ProjectProgressCard(
                    color: Color(0xff6C6CE5),
                    projectName: 'Delivery Club',
                    percentComplete: '78%',
                    progressIndicatorColor: Colors.blue[200],
                    icon: FeatherIcons.truck,
                  ),
                  ProjectProgressCard(
                    color: Color(0xffFAAA1E),
                    projectName: 'Travel Comrode',
                    percentComplete: '82%',
                    progressIndicatorColor: Colors.amber[200],
                    icon: Icons.local_airport,
                  ),
                ],
              ),
            ),
            SubHeader(
              title: 'Shared Files',
            ),
          ],
        ),
      ),
    );
  }
}
