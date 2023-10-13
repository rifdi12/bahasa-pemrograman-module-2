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
      title: 'Program Pengenalan Dasar Operator Dart / Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  num hasilKali = 0;
  num hasilTambah = 0;
  num hasilKurang = 0;
  num hasilBagi = 0;
  TextEditingController nilaiPraktek1 = TextEditingController();
  TextEditingController nilaiPraktek2 = TextEditingController();
  TextEditingController nilaiHasilTambah = TextEditingController();
  TextEditingController nilaiHasilKurang = TextEditingController();
  TextEditingController nilaiHasilKali = TextEditingController();
  TextEditingController nilaiHasilBagi = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Program Pengenalan Dasar Operator Dart / Flutter'),
      ),
      body: Container(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                Text('Nilai Praktek 1 :'),
                SizedBox(
                  width: 24,
                ),
                Flexible(
                  child: TextFormField(
                    controller: nilaiPraktek1,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text('Nilai Praktek 2 :'),
                SizedBox(
                  width: 24,
                ),
                Flexible(
                  child: TextFormField(
                    controller: nilaiPraktek2,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      hasilTambah = int.parse(nilaiPraktek1.text) +
                          int.parse(nilaiPraktek2.text);
                      nilaiHasilTambah.text = hasilTambah.toString();
                    });
                  },
                  child: Text('Tambah'),
                ),
                SizedBox(
                  width: 24,
                ),
                Text('Hasil :'),
                SizedBox(
                  width: 24,
                ),
                Flexible(
                  child: TextFormField(
                    enabled: false,
                    controller: nilaiHasilTambah,
                  ),
                ),
              ],
            ),

            // kali
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      hasilKali = int.parse(nilaiPraktek1.text) *
                          int.parse(nilaiPraktek2.text);
                      nilaiHasilKali.text = hasilTambah.toString();
                    });
                  },
                  child: Text('Kali'),
                ),
                SizedBox(
                  width: 24,
                ),
                Text('Hasil :'),
                SizedBox(
                  width: 24,
                ),
                Flexible(
                  child: TextFormField(
                    enabled: false,
                    controller: nilaiHasilKali,
                  ),
                ),
              ],
            ),
            //bagi
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      hasilBagi = int.parse(nilaiPraktek1.text) /
                          int.parse(nilaiPraktek2.text);
                      nilaiHasilBagi.text = hasilBagi.toString();
                    });
                  },
                  child: Text('Bagi'),
                ),
                SizedBox(
                  width: 24,
                ),
                Text('Hasil :'),
                SizedBox(
                  width: 24,
                ),
                Flexible(
                  child: TextFormField(
                    enabled: false,
                    controller: nilaiHasilBagi,
                  ),
                ),
              ],
            ),

            //kurang
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      hasilKurang = int.parse(nilaiPraktek1.text) -
                          int.parse(nilaiPraktek2.text);
                      nilaiHasilKurang.text = hasilKurang.toString();
                    });
                  },
                  child: Text('Kurang'),
                ),
                SizedBox(
                  width: 24,
                ),
                Text('Hasil :'),
                SizedBox(
                  width: 24,
                ),
                Flexible(
                  child: TextFormField(
                    enabled: false,
                    controller: nilaiHasilKurang,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
