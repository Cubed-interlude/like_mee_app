import 'package:flutter/material.dart';
import 'package:likemeeapp/header.dart';

class MatchScreen extends StatelessWidget {
  MatchScreen({super.key});

  final HeaderAppBar header = HeaderAppBar();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header.addHeader(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Container(
                height: 550,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/tate.jfif'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      'Andrew Tate, 42',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Text(
                      'Fashion Designer',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.cancel),
                            tooltip: 'Swipe left',
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                            tooltip: 'Match',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                  color: Colors.grey[200],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Tooltip(
                      message: 'VideoCall',
                      child: Icon(
                        Icons.video_call_outlined,
                        size: 30,
                        color: Colors.red,
                      ),
                    ),
                    Tooltip(
                      message: 'Home',
                      child: Icon(
                        Icons.home_outlined,
                        size: 30,
                        color: Colors.blue,
                      ),
                    ),
                    Tooltip(
                      message: 'Chats',
                      child: Icon(
                        Icons.chat_outlined,
                        size: 30,
                        color: Colors.green,
                      ),
                    ),
                    Tooltip(
                      message: 'Profile',
                      child: Icon(
                        Icons.person_outline,
                        color: Colors.blueGrey,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
