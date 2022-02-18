import 'package:flutter/material.dart';

import 'package:my_first_flutterapp/gridwisata_page.dart';
import 'package:my_first_flutterapp/listwisata_page.dart';
import 'package:my_first_flutterapp/whatsapp_page.dart';

class BerandaPage extends StatelessWidget {
  const BerandaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("HomePage"),
        ),
        body: Column(
          children: [
            Flexible(
              child: Row(
                children: [
                  tampilanMenu(Colors.red[900], "assets/gambar/list.png",
                      "List Room", context, const ListWisataPage()),
                  tampilanMenu(Colors.amber[800], "assets/gambar/grid.png",
                      "Grid Room", context, const GridWisataPage())
                ],
              ),
            ),
           
          ],
        ));
  }

  Widget tampilanMenu(Color? warna, String? gambar, String? text,
      BuildContext context, Widget kelasTujuan) {
    return Flexible(
      //gesture detector berfungsi untuk membungkus suatu widget agar dapat diklik
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => kelasTujuan));
          },
          child: Container(
            width: double.infinity,
            color: warna,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  gambar ?? "-",
                  width: 100,
                  height: 100,
                ),
                Text(text ?? "-")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
