import 'package:flutter/material.dart';
import '../model/poli.dart';
import 'poli_detail.dart';

class PoliPage extends StatefulWidget {
  const PoliPage({super.key});

  @override
  State<PoliPage> createState() => _PoliPageState();
}

class _PoliPageState extends State<PoliPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2196F3),
        foregroundColor: Colors.white,
        title: const Text("Data Poli"),
      ),
      body: ListView(
        children: [
          GestureDetector(
            child: const Card(
              child: ListTile(
                title: Text("Poli Anak"),
              ),
            ),
            onTap: () {
              Poli poliAnak = Poli(namaPoli: "Poli Anak");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PoliDetail(poli: poliAnak)));
            },
          ),
          const Card(
            child: ListTile(
              title: Text("Poli Kandungan"),
            ),
          ),
          const Card(
            child: ListTile(
              title: Text("Poli Gigi"),
            ),
          ),
          const Card(
            child: ListTile(
              title: Text("Poli THT"),
            ),
          )
        ],
      ),
    );
  }
}
