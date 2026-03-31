// Nama: Kadek Gandhi Wahyu Jaya Suastika
// NIM: 1202230017
// Tugas: Mobile Programming Modul 5 User interaction

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Modul 5 - Gandhi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map<String, dynamic>> data = [];
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _langController = TextEditingController();
  String _selectedColor = 'Biru';

  @override
  void initState() {
    super.initState();
    data = [
      {
        "name": "Native App", 
        "lang": "Java, Kotlin, Swift", 
        "color": Colors.blue},
      {
        "name": "Hybrid App", 
        "lang": "Javascript, Dart", 
        "color": Colors.green},
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("1202230017 - User Interaction Create & Read"), // Identitas Gandhi
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(backgroundColor: data[index]['color']),
            title: Text(data[index]['name']),
            subtitle: Text(data[index]['lang']),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text(data[index]['name']),
                    content: Text("Platform ini menggunakan bahasa: ${data[index]['lang']}"),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text("Close"),
                      ),
                    ],
                  );
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: const Text("Ingin menambah data baru?"),
              action: SnackBarAction(
                label: "Add",
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return SimpleDialog(
                        title: const Text("Tambah Teknologi Baru"),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        children: [
                          TextFormField(
                            controller: _nameController,
                            decoration: const InputDecoration(labelText: "Nama Platform"),
                          ),
                          TextFormField(
                            controller: _langController,
                            decoration: const InputDecoration(labelText: "Bahasa Pemrograman"),
                          ),
                          DropdownButtonFormField<String>(
                            value: _selectedColor,
                            items: const [
                              DropdownMenuItem(value: 'Biru', child: Text("Biru")),
                              DropdownMenuItem(value: 'Hijau', child: Text("Hijau")),
                              DropdownMenuItem(value: 'Merah', child: Text("Merah")),
                            ],
                            onChanged: (value) => setState(() => _selectedColor = value!),
                            decoration: const InputDecoration(labelText: "Warna Label"),
                          ),
                          const SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                Color colorToSave = Colors.blue;
                                if (_selectedColor == 'Hijau') colorToSave = Colors.green;
                                if (_selectedColor == 'Merah') colorToSave = Colors.red;

                                data.add({
                                  "name": _nameController.text,
                                  "lang": _langController.text,
                                  "color": colorToSave,
                                });
                              });
                              _nameController.clear();
                              _langController.clear();
                              Navigator.pop(context);
                            },
                            child: const Text("Save"),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}