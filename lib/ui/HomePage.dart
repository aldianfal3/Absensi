import 'package:absensi/ui/sidebar.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: sidebar(),
      appBar: AppBar(
        title: Text("Prilude Absensi"),
      ),
    );
  }
}
