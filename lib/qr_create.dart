import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCreate extends StatefulWidget {
  const QrCreate({super.key});

  @override
  State<QrCreate> createState() => _HomePageState();
}

class _HomePageState extends State<QrCreate> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Create Qr'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              QrImage(
                data: controller.text,
                size: 250,
                backgroundColor: Colors.white,
              ),
              SizedBox(height: 100),
              TextFormField(
                controller: controller,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                decoration: InputDecoration(
                    hintText: 'Enter your data',
                    hintStyle: TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Theme.of(context).accentColor,
                      ),
                    ),
                    suffixIcon: IconButton(
                        icon: Icon(Icons.done),
                        onPressed: () => setState(() {}))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
