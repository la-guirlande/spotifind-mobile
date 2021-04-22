import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FindSongPage extends StatefulWidget {
  @override
  _FindSongPageState createState() => _FindSongPageState();
}

class _FindSongPageState extends State<FindSongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 0),
                      color: Color.fromRGBO(38, 38, 38, 1),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.width * 0.6,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "Titre",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 50,
                        horizontal: 80,
                      ),
                      child: CircleAvatar(
                        radius: 180,
                        backgroundColor: Color(0xffFFFFFF),
                        child: CircleAvatar(
                          radius: 90,
                          backgroundImage: NetworkImage(
                              "https://lastfm.freetls.fastly.net/i/u/500x500/bc0b8e59c22304290e6b6775696844a0.jpg"),
                        ),
                      )),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: ''),
              ),
              SizedBox(
                height: 20.0,
              ),
              FlatButton(
                child: Text('Valider'),
                onPressed: () {},
              )
            ],
          ),
        ));
  }
}
