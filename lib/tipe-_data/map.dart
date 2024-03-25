import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Map profile = {
    'firstName': 'Kelompok',
    'lastName': 'Tiga',
    'seri': 'Manusia Ante Wi',
    'status': 'Happy Banget',
  };

  void jalankan() {
    profile['firstName'] = 'KAYAKNYA Kelompok';
    profile['lastName'] = 'Tiga';
    profile['seri'] = 'Ya Ampun, Stres!';
    profile['status'] = 'Gantung Diri';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nama Depan : ${profile['firstName']}'),
            Text('nama Belakang : ${profile['lastName']}'),
            Text('Seri: ${profile['seri']}'),
            Text('Status : ${profile['status']}'),
            ElevatedButton(
              onPressed: () {
                jalankan();
              },
              child: Text('Pecik Aku >.<'),
            )
          ],
        ),
      ),
    );
  }
}
