import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snappable/snappable.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final key = GlobalKey<SnappableState>();
  final key1 = GlobalKey<SnappableState>();
  final key2 = GlobalKey<SnappableState>();
  final key3 = GlobalKey<SnappableState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image(
          image: AssetImage('assets/sky.jpg'),
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Container(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: 140.0, left: 24.0, right: 24.0, bottom: 18.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 10.0,
                        offset: Offset(4.0, 4.0),
                      ),
                    ]),
              ),
              Snappable(
                snapOnTap: true,
                key: key2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage('assets/thanos.png'),
                    width: MediaQuery.of(context).size.width - 20,
                  ),
                ),
              ),
              Snappable(
                snapOnTap: true,
                key: key3,
                child: Container(
                  margin: EdgeInsets.only(top: 290, right: 32, left: 32),
                  height: 180,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 10.0,
                          offset: Offset(4.0, 4.0),
                        ),
                      ]),
                  padding: EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Snappable(
                            key: key1,
                            snapOnTap: true,
                            child: Text(
                              'Thanos',
                              style: GoogleFonts.varelaRound(
                                  fontSize: 28.0, color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Snappable(
                            key: key,
                            snapOnTap: true,
                            child: Text(
                              'The Mad Titan   ',
                              style: GoogleFonts.abel(
                                  fontSize: 12.0, color: Colors.grey[700]),
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Snappable(
                            child: FloatingActionButton.extended(
                              icon: Icon(Icons.thumb_down),
                              onPressed: () {
                                key.currentState.snap();
                                key1.currentState.snap();
                                key2.currentState.snap();
                                key3.currentState.snap();
                              },
                              label: Text('Kill him'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
