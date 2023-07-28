import 'package:absensi/helpers/user_info.dart';
import 'package:absensi/ui/DataAbsen.dart';
import 'package:absensi/ui/loginAbsensi.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var token = await userInfo().getToken();
  print(token);
  runApp(MaterialApp(
    title: "Klinik APP",
    debugShowCheckedModeBanner: false,
    home: token == null ? loginAbsensi() : absen(),
  ));
}
