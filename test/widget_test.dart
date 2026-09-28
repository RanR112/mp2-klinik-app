// Basic smoke test for klinik_app.
//
// Memastikan halaman "Data Poli" tampil beserta daftar poli-nya.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:klinik_app/main.dart';

void main() {
  testWidgets('Halaman Data Poli menampilkan daftar poli',
      (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    expect(find.text('Data Poli'), findsOneWidget);
    expect(find.text('Poli Anak'), findsOneWidget);
    expect(find.text('Poli Kandungan'), findsOneWidget);
    expect(find.text('Poli Gigi'), findsOneWidget);
    expect(find.text('Poli THT'), findsOneWidget);
  });
}
