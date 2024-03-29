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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
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
    'firstName': 'Kadek',
    'lastName': 'Agus',
    'jurusan': 'Sistem Informasi',
    'tinggi': 180,
  };

  void jalankan() {
    profile['firstName'] = 'Kartadhi';
    profile['lastName'] = 'Mahardika';
    profile['jurusan'] = 'Manusia Ante';
    profile['tinggi'] = 170;
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
            Text('Jurusan : ${profile['jurusan']}'),
            Text('Tinggi : ${profile['tinggi']}'),
            ElevatedButton(
              onPressed: () {
                jalankan();
              },
              child: Text('Tekan'),
            )
          ],
        ),
      ),
    );
  }
}
