import 'package:absensi/ui/edit.dart';
import 'package:absensi/ui/sidebar.dart';
import 'package:absensi/ui/tambah.dart';
import 'package:flutter/material.dart';

class Karyawan extends StatelessWidget {
  const Karyawan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: sidebar(),
      appBar: AppBar(
        title: Text("DAFTAR KARYAWAN"),
        actions: [
          GestureDetector(
              child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => tambah()));
                  },
                  icon: Icon(Icons.add),
                  label: Text("Tambah"))),
          SizedBox(
            width: 30,
          ),
          ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => edit()));
              },
              icon: Icon(Icons.edit_note_rounded),
              label: Text("Edit"))
        ],
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(15)),
            width: 300, // Lebar container
            height: 120, // Tinggi container
            // Warna latar belakang container
            padding: EdgeInsets.all(16), // Ruang padding di dalam container
            margin: EdgeInsets.all(16), // Ruang margin di luar container
            alignment:
                Alignment.center, // Posisi tampilan teks di dalam container
            child: Column(
              children: [
                Text(
                  'Nama : M.aldi ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'Email : Al********@gmail.com',
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
            height: 120, // Tinggi container
            // Warna latar belakang container
            padding: EdgeInsets.all(16), // Ruang padding di dalam container
            margin: EdgeInsets.all(16), // Ruang margin di luar container
            alignment:
                Alignment.center, // Posisi tampilan teks di dalam container
            child: Column(
              children: [
                const Text(
                  'Nama : M.Galih ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  'Email : Ga********@gmail.com',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
