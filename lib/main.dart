import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 12.0,
              ),
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/poet.jpg'),
              ),
              Text(
                'Timothy K Serem',
                style: TextStyle(
                    fontSize: 32.0,
                    color: Colors.white,
                    fontFamily: 'Pacifico'),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  color: Colors.indigo.shade100,
                  fontSize: 18.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.indigo.shade100,
                ),
              ),
              FlatButton(
                onPressed: () {
                  const phone = 'tel:+254 711 928 250';
                  launchUrl(phone);
                },
                child: Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.phone,
                          color: Colors.indigo.shade900,
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        Text(
                          '+254 711 928 250',
                          style: TextStyle(
                            color: Colors.indigo.shade900,
                            fontFamily: 'SourceSansPro',
                            fontSize: 20.0,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {
                  const email = 'mailto:theecodepoet@gmail.com';
                  launchUrl(email);
                },
                child: Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.email,
                          color: Colors.indigo.shade900,
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        Text(
                          'theecodepoet@gmail.com',
                          style: TextStyle(
                            color: Colors.indigo.shade900,
                            fontFamily: 'SourceSansPro',
                            fontSize: 20.0,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

void launchUrl(url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
