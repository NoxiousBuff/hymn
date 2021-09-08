import 'package:flutter/material.dart';
import 'package:hymn/components/album_art.dart';
import 'package:hymn/components/scroll_part.dart';
import 'package:hymn/constants.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController controller = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    print(kRandomColor);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            ListTile(
              title: Text('Good Morning, Noxious' ?? 'For You',
                  style: kScrollPartText),
              trailing: Icon(Icons.settings_outlined),
              onTap: () {},
            ),
            // Padding(
            //   padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Text(
            //         'Good Morning, Noxious',
            //         style: kScrollPartText.copyWith(),
            //       ),
            //       Icon(Icons.settings_outlined),
            //     ],
            //   ),
            // ),
            Container(
              height: 200.0,
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: PageView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 5,
                      controller: controller,
                      reverse: true,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              color: kRandomColor,
                              borderRadius: BorderRadius.circular(20.0)),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20.0),
            ScrollPart(
              containerHeight: 200.0,
              width: 200.0,
              text: 'Recently Played',
            ),
            ScrollPart(
              containerHeight: 250.0,
              width: 250.0,
            ),
            ScrollPart(
              height: 600.0,
              width: 600.0,
              text: 'Listen Now',
            ),
            ScrollPart(
              height: 250.0,
              width: 225.0,
              borderRadius: BorderRadius.circular(250.0),
              text: 'Artist You Should Follow',
            ),
            ListTile(
              title: Text('Challenges' ?? 'For You', style: kScrollPartText),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {},
            ),
            Row(
              children: [
                Expanded(
                  child: AlbumArt(),
                  flex: 2,
                ),
                Expanded(
                  child: Column(
                    children: [
                      AlbumArt(
                        height: 115.0,
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      AlbumArt(
                        height: 115.0,
                        borderRadius: BorderRadius.circular(25.0),
                      )
                    ],
                  ),
                )
              ],
            ),
            ScrollPart(
              text: 'Popular Now',
            ),
            ScrollPart(
              text: 'Time To Time',
            )
          ],
        ),
      ),
    );
  }
}
