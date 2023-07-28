import 'package:absensi/helpers/api_client.dart';
import 'package:absensi/service/login_service.dart';
import 'package:absensi/ui/DataAbsen.dart';
import 'package:absensi/ui/HomePage.dart';
import 'package:absensi/ui/Register.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class loginAbsensi extends StatefulWidget {
  const loginAbsensi({super.key});

  @override
  State<loginAbsensi> createState() => _loginAbsensiState();
}

class _loginAbsensiState extends State<loginAbsensi> {
  final _emailCtrl = TextEditingController();
  final _passwordCrtl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "PRILUDE ABSENSI",
                style: TextStyle(fontSize: 35),
              ),
              Icon(
                Icons.account_circle_outlined,
                size: 150,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "E-mail",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => absen()));
                          },
                          child: Text("Login")),
                      SizedBox(
                        width: 40,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Register()));
                          },
                          child: Text("Register")),
                    ],
                  ),
                ),
              )
            ]),
      ),
    );
  }
}
