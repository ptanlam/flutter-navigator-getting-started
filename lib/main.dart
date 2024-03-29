import 'package:flutter/material.dart';
import 'package:navigation_app/art_route.dart';
import 'package:navigation_app/art_util.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigating Art',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Art Tab'),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.art_track),
                  text: ArtUtil.CARAVAGGIO,
                ),
                Tab(
                  icon: Icon(Icons.art_track),
                  text: ArtUtil.MONET,
                ),
                Tab(
                  icon: Icon(Icons.art_track),
                  text: ArtUtil.VANGOGH,
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(ArtUtil.IMG_CARAVAGGIO),
                          fit: BoxFit.fill))),
              Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(ArtUtil.IMG_MONET),
                          fit: BoxFit.fill))),
              Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(ArtUtil.IMG_VANGOGH),
                          fit: BoxFit.fill))),
            ],
          ),
        ),
      ),
    );
  }
}
