import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage('assets/thanos.png'),
                  width: MediaQuery.of(context).size.width - 20,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(32, 290, 32, 151),
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
                        Text(
                          'Thanos',
                          style: GoogleFonts.varelaRound(
                              fontSize: 28.0, color: Colors.black),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          'The Mad Titan   ',
                          style: GoogleFonts.varelaRound(
                              fontSize: 12.0, color: Colors.grey[700]),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        FloatingActionButton.extended(
                          icon: Icon(Icons.thumb_down),
                          onPressed: () {},
                          label: Text('Kill him'),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
