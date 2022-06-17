import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:nusanfood/page/pilihan.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:nusanfood/firebase/sign_in.dart';
import 'package:nusanfood/page/login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Tambah extends StatefulWidget {
  const Tambah({Key? key}) : super(key: key);

  @override
  State<Tambah> createState() => _TambahState();
}

class _TambahState extends State<Tambah> {
  final user = FirebaseAuth.instance.currentUser!;
  final CollectionReference _masakan =
      FirebaseFirestore.instance.collection('makanan');

  TextEditingController masakanController = TextEditingController();
  TextEditingController linkController = TextEditingController();
  TextEditingController estimasiController = TextEditingController();
  TextEditingController kategoriController = TextEditingController();
  TextEditingController bahanController = TextEditingController();
  TextEditingController langkahController = TextEditingController();
  TextEditingController pemilikController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          toolbarHeight: 65,
          title: GradientText(
            "NusanFood",
            style: const TextStyle(fontWeight: FontWeight.w900),
            colors: const [
              Color(0xffFF8A00),
              Color(0xffFF5C5C),
            ],
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const Pilihan();
                  },
                ),
              );
            },
            // 2031710159 Dikhi Achmad Dani
          ),
          backgroundColor: Colors.white,
          actions: <Widget>[
            Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.only(right: 20),
                    child: const Icon(
                      Icons.favorite,
                      color: Color(0xffFF8A00),
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(left: 5, right: 5)),
                GestureDetector(
                  onTap: () {
                    signOutGoogle();
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (context) {
                      return const LoginPage();
                    }), ModalRoute.withName('/'));
                  },
                  child: Container(
                    padding: const EdgeInsets.only(right: 20),
                    child: const Icon(
                      Icons.door_back_door_outlined,
                      color: Color.fromARGB(255, 255, 0, 0),
                    ),
                  ),
                ),
              ],
            ),
          ]),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: ListView(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
            child: TextField(
              controller: masakanController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: "Masukkan nama masakan",
                labelText: "Nama masakan",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
            child: TextField(
              controller: linkController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: "Masukkan link gambar masakan",
                labelText: "Link gambar",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
            child: TextField(
              controller: estimasiController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Masukkan estimasi waktu masak",
                labelText: "Estimasi waktu masak",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
            child: TextField(
              controller: kategoriController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: "Masukkan kategori",
                labelText: "kategori",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
            child: TextField(
              controller: bahanController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: "Masukkan bahan-bahan",
                labelText: "Bahan",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
            child: TextField(
              controller: langkahController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: "Masukkan langkah-langkah",
                labelText: "Langkah-langkah",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
            child: TextField(
              controller: pemilikController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: "Masukkan nama pemilik",
                labelText: "pemilik",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
          ),
          Container(
              width: 50,
              child: RaisedButton(
                  child: const Text(
                    "tambahkan",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.orange,
                  onPressed: () async {
                    await _create();

                    masakanController.text = '';
                    linkController.text = '';
                    estimasiController.text = '';
                    kategoriController.text = '';
                    bahanController.text = '';
                    langkahController.text = '';
                    pemilikController.text = '';

                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const Pilihan();
                        },
                      ),
                    );
                  })),
        ]),
      ),
    );
  }

  Future<void> _create() async {
    final String? masakan = masakanController.text;
    final String? link = linkController.text;
    final int? estimasi = int.tryParse(estimasiController.text);
    final String? kategori = kategoriController.text;
    final String? bahan = bahanController.text;
    final String? langkah = langkahController.text;
    final String? pemilik = pemilikController.text;

    if (masakan != null &&
        link != null &&
        estimasi != null &&
        kategori != null &&
        bahan != null &&
        langkah != null &&
        pemilik != null) {
      // Persist a new product to Firestore
      await _masakan.add({
        "nama_makanan": masakan,
        "image": link,
        "estimasi_waktu": estimasi,
        "kategori": kategori,
        "bahan": bahan,
        "langkah_langkah": langkah,
        "resep": pemilik
      });
    }

    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text('Berhasil Menambah Data')));
  }
}
