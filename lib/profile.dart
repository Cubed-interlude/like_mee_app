import 'package:flutter/material.dart';
import 'package:likemeeapp/header.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final HeaderAppBar header = HeaderAppBar();

  String input_value = "";

final TextEditingController username = TextEditingController();
final TextEditingController mobileNumber = TextEditingController();
final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header.addHeader(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          clipBehavior: Clip.none,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                color: header.primaryColor,
                padding: const EdgeInsets.all(15),
                child: const Text(
                  "Profile Screen",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(input_value),
                    TextField(
                      onChanged: (value) {
                        setState(() {
                          input_value = value;
                        });
                      },
                      decoration: const InputDecoration(
                          hintText: "E.g @deinsdennison",
                          labelText: "Username",
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          icon: Icon(Icons.person)),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          hintText: "E.g +234 0934 898 89845",
                          labelText: "Mobile Number",
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          icon: Icon(Icons.phone)),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "****",
                          labelText: "Password",
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          icon: Icon(Icons.security)),
                    ),
                     const SizedBox(
                      height: 30,
                    ),
                    TextField(
                      onChanged: (value) {
                        setState(() {
                          input_value = value;
                        });
                      },
                      decoration: const InputDecoration(
                          hintText: "Dennison",
                          labelText: "Fullname",
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          icon: Icon(Icons.person_add)),
                    ),
                     const SizedBox(
                      height: 30,
                    ),
                     const TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          hintText: "20/12/19**",
                          labelText: "Age",
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          icon: Icon(Icons.date_range)),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Divider(
                      thickness: 1,
                      color: header.primaryColor,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: (() {}),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: header.primaryColor,
                        elevation: 0,
                        minimumSize: const Size(double.infinity, 60),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0)),
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontStyle: FontStyle.normal),
                      ),
                      child: const Text('Save'),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
