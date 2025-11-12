import 'package:flutter/material.dart';
import 'tampil_data.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  State<FormData> createState() => _FormDataState();
}

class _FormDataState extends State<FormData> {
  // Buat controller untuk setiap TextField
  final _namaController = TextEditingController();
  final _nimController = TextEditingController();
  final _tahunLahirController = TextEditingController();

  @override
  void dispose() {
    _namaController.dispose();
    _nimController.dispose();
    _tahunLahirController.dispose();
    super.dispose();
  }

  void _kirimData() {
    String nama = _namaController.text;
    String nim = _nimController.text;
    String tahunLahirStr = _tahunLahirController.text;

    int umur = 0;
    if (tahunLahirStr.isNotEmpty) {
      int tahunLahir = int.tryParse(tahunLahirStr) ?? 0;

      if (tahunLahir > 0) {
        int tahunSekarang = DateTime.now().year;
        umur = tahunSekarang - tahunLahir;
      }
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TampilData(nama: nama, nim: nim, umur: umur),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Input Data')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            TextField(
              controller: _namaController,
              decoration: const InputDecoration(labelText: 'Nama'),
            ),
            const SizedBox(height: 16),

            TextField(
              controller: _nimController,
              decoration: const InputDecoration(labelText: 'NIM'),
            ),
            const SizedBox(height: 16),

            TextField(
              controller: _tahunLahirController,
              decoration: const InputDecoration(labelText: 'Tahun Lahir'),

              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 24),

            ElevatedButton(onPressed: _kirimData, child: const Text('Simpan')),
          ],
        ),
      ),
    );
  }
}
