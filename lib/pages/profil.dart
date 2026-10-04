import 'package:flutter/material.dart';
import 'package:flutter_application_kuis_mobile/data/car.dart';
import 'login.dart';

class Warna {
  // Menyimpan pilihan warna
  Color selectedColor = Colors.green;
}

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  int counter = 0;

  // State warna
  Color selectedColor = Colors.green;

  // Fungsi untuk mengganti warna
  void changeColor(Color color) {
    setState(() {
      selectedColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(14),
        child: Column(
          spacing: 12,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // =========================
            // LINGKARAN PROFIL
            // =========================
            CircleAvatar(
              backgroundColor: selectedColor,
              foregroundColor: Colors.white,
              radius: 28,
              child: const Text(
                "T",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),

            const SizedBox(height: 18),

            Text(
              user1.name,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),

            const SizedBox(height: 18),

            Text(
              "Saya bersumpah mengerjakan soal kuis ini dengan jujur "
              "dan tidak melakukan kecurangan apapun itu",
              style: const TextStyle(
                fontSize: 12,
              ),
            ),

            const SizedBox(height: 18),

            // =========================
            // PILIH WARNA
            // =========================
            const Text(
              "Pilih warna:",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),

            // 3 tombol lingkaran warna
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                // MERAH
                GestureDetector(
                  onTap: () {
                    changeColor(Colors.red);
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),

                const SizedBox(width: 20),

                // BIRU
                GestureDetector(
                  onTap: () {
                    changeColor(Colors.blue);
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),

                const SizedBox(width: 20),

                // HIJAU
                GestureDetector(
                  onTap: () {
                    changeColor(Colors.green);
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 18),

            // =========================
            // TOMBOL LOGOUT
            // =========================
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  selectedColor,
                ),
              ),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                  (route) => false,
                );
              },
              child: const Text(
                "Logout",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

