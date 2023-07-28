import 'package:absensi/ui/Keluar.dart';
import 'package:absensi/ui/edit.dart';
import 'package:absensi/ui/editAdmin.dart';
import 'package:absensi/ui/loginAbsensi.dart';
import 'package:absensi/ui/sidebar.dart';
import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PROFILE"),
      ),
      drawer: sidebar(),
      body: Center(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              width: 320, // Lebar container
              height: 300, // Tinggi container
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
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Username : Evo',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Email : gsoan*****@gmail.com ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Password : ********* ',
                    style: TextStyle(
                      color: Colors.white,
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
                                    builder: (context) => edit()));
                          },
                          icon: Icon(Icons.edit_note_rounded),
                          label: Text("Edit")),
                      SizedBox(
                        height: 75,
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
          ],
        ),
      ),
    );
  }
}
