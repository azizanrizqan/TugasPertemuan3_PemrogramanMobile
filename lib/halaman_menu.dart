import 'package:flutter/material.dart';

class HalamanMenu extends StatelessWidget {
  const HalamanMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman Menu"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: const Center(
        child: Text(
          "Ini adalah Halaman Menu",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
