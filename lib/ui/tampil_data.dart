import 'package:flutter/material.dart';

class TampilData extends StatelessWidget {
  final String nama;
  final String nim;
  final int umur;

  const TampilData({
    Key? key,
    required this.nama,
    required this.nim,
    required this.umur,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Perkenalan')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'Nama saya $nama, NIM $nim, dan umur saya adalah $umur tahun',
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
