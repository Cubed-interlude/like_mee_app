import 'package:flutter/material.dart';
import 'package:likemeeapp/match.dart';
import 'package:likemeeapp/profile.dart';

void main() {
  runApp(const LikeMeeApp());
}

class LikeMeeApp extends StatelessWidget {
  const LikeMeeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "LIKEMEE",
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text(
                  "LIKE",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.italic,
                      fontSize: 25),
                ),
                Text(
                  "MEE",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                      fontSize: 25),
                ),
              ],
            ),
          ),
          body: const ActionButton()),
    );
  }
}

class ActionButton extends StatefulWidget {
  const ActionButton({super.key});

  @override
  State<ActionButton> createState() => _ActionButtonState();
}

String imageChange = 'assets/images/people1.jpeg';

class _ActionButtonState extends State<ActionButton> {
  String wordChange = "NO MORE \nLONELY DAYS";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Image(
            image: AssetImage('images/boy.jpg'),
            width: 400,
            height: 400,
          ),
          Text(
            wordChange,
            style: const TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w900,
              fontStyle: FontStyle.italic,
            ),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 0.0, top: 80.0),
            child: ElevatedButton(
              onPressed: (() {
                // setState(() {
                //   wordChange = "WELCOME TO \n MY LIFE";
                // });
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MatchScreen(),
                    ));
              }),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                elevation: 0,
                minimumSize: const Size(250, 60),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0)),
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontStyle: FontStyle.normal),
              ),
              child: const Text('get started',
              style: TextStyle(
                color: Colors.white,
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 0.0, top: 0.0),
            child: ElevatedButton(
              onPressed: (() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileScreen(),));

                // setState(() {
                //   wordChange = "MEET NEW \n PEOPLE";
                //   imageChange = 'assets/images/people1.jpeg';
                // });
              }),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                elevation: 0,
                minimumSize: const Size(250, 60),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0)),
                textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontStyle: FontStyle.normal),
              ),
              child: const Text(
                'login in with email',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
