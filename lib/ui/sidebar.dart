import 'package:absensi/ui/DataAbsen.dart';
import 'package:absensi/ui/HomePage.dart';
import 'package:absensi/ui/Karyawan.dart';
import 'package:absensi/ui/editAdmin.dart';
import 'package:absensi/ui/kehadiran.dart';
import 'package:absensi/ui/loginAbsensi.dart';
import 'package:absensi/ui/profile.dart';
import 'package:flutter/material.dart';

class sidebar extends StatelessWidget {
  const sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 222, 224, 226),
                borderRadius: BorderRadius.circular(15)),
            width: 600, // Lebar container
            height: 225, // Tinggi container
            // Warna latar belakang container
            padding: EdgeInsets.all(16), // Ruang padding di dalam container
            margin: EdgeInsets.all(16), // Ruang margin di luar container
            alignment:
                Alignment.center, // Posisi tampilan teks di dalam container
            child: Column(
              children: [
                Icon(
                  Icons.account_circle_outlined,
                  size: 90,
                ),
                Text(
                  'Nama : Muhamad Aldi Saputra ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => editAdmin()));
                        },
                        icon: Icon(Icons.edit_note_rounded),
                        label: Text("Edit")),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => loginAbsensi()));
                        },
                        icon: Icon(Icons.logout),
                        label: Text("Keluar"))
                  ],
                )
              ],
            ),
          ),
        ),
        ListTile(
            leading: Icon(Icons.supervised_user_circle_outlined),
            title: Text("Karyawan"),
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Karyawan()));
            }),
        ListTile(
            leading: Icon(Icons.border_color_rounded),
            title: Text("Absensi"),
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => absen()));
            }),
        ListTile(
            leading: Icon(Icons.menu_book_rounded),
            title: Text("Info Kehadiran"),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => kehadiran()));
            }),
        ListTile(
            leading: Icon(Icons.logout),
            title: Text("LOG OUT"),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => loginAbsensi()));
            }),
      ],
    ));
  }
}
