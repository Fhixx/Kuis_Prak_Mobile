import 'package:flutter/material.dart';
import '../pages/home.dart';
import '../pages/profil.dart';

class Root extends StatefulWidget {
  final String name;
  const Root({super.key, required this.name});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
int _selectecIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [HomePage(), ProfilPage()];

    return Scaffold(
      appBar: AppBar(
        title: Text("Selamat Datang, ${widget.name}"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),

      body: pages[_selectecIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex:  _selectecIndex,
        onTap: (index){
          setState(() {
            _selectecIndex = index;
          });
        },
        items: [
        BottomNavigationBarItem(
          label: "Home",
          icon: Icon(Icons.home)
        ),
        BottomNavigationBarItem(
          label: "Profil",
          icon: Icon(Icons.person)
        ),
      ]),
    );
  }
}