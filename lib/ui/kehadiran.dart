import 'package:absensi/ui/Keluar.dart';
import 'package:absensi/ui/Masuk.dart';
import 'package:absensi/ui/loginAbsensi.dart';
import 'package:absensi/ui/sidebar.dart';
import 'package:flutter/material.dart';

class kehadiran extends StatelessWidget {
  const kehadiran({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: sidebar(),
        appBar: AppBar(
          title: Text('KEHADIRAN KARYAWAN PRILUDE'),
          centerTitle: true,
          actions: [
            GestureDetector(
                child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => loginAbsensi()));
                    },
                    icon: Icon(Icons.logout),
                    label: Text("Keluar"))),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(15)),
              width: 300, // Lebar container
              height: 125, // Tinggi container
              // Warna latar belakang container
              padding: EdgeInsets.all(16), // Ruang padding di dalam container
              margin: EdgeInsets.all(16), // Ruang margin di luar container
              // Posisi tampilan teks di dalam container
              child: const Column(
                children: [
                  Text(
                    'Nama : M.aldi ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Jam Masuk : 09:00',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Hari : Senin',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Status : Hadir',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(15)),
              width: 300, // Lebar container
              height: 125, // Tinggi container
              // Warna latar belakang container
              padding: EdgeInsets.all(16), // Ruang padding di dalam container
              margin: EdgeInsets.all(16), // Ruang margin di luar container
              alignment:
                  Alignment.center, // Posisi tampilan teks di dalam container
              child: const Column(
                children: [
                  Text(
                    'Nama : M.Galih ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Jam Masuk: 09:05',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Hari : Senin',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Status : Izin',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
