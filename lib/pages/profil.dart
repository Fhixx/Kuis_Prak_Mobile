import 'package:flutter/material.dart';
import 'package:flutter_application_kuis_mobile/data/car.dart';
import 'login.dart';

class Warna{

}

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  int counter = 0;
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

            CircleAvatar(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              radius: 28,
              child: Text("T",
              style: TextStyle(
                fontSize: 20
              ),
              ),

              
            ),

            const SizedBox(height: 18),
            Text(
              user1.name,
              style: TextStyle(
                fontSize: 18,
  
              ),
            ),

            const SizedBox(height: 18),
            
            Text(
              "Saya bersumpah mengerjakan soal kuis ini dengan jujur dan tidak melakukan kecurangan apapun itu",
              style: TextStyle(
                fontSize: 12,
                
              ),
              ),


            
            const SizedBox(height: 18),
            
            ElevatedButton(
              style: ButtonStyle(
                
              ),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                  (route) => false,
                );
              },
              child: Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}
