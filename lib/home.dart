import 'package:flutter/material.dart';
import 'package:qr_code/qr_create.dart';
import 'package:qr_code/qr_scan.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  List pages = [QrCreate(), QrScan()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.orange,
        currentIndex: index,
        onTap: (value) {
          setState(() {
            this.index = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_sharp),
            label: 'QR Create',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner),
            label: 'QR Scan',
          ),
        ],
      ),
    );
  }
}
