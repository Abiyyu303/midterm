import 'package:flutter/material.dart';
import 'package:my_first_flutterapp/data/wisata_data.dart';
import 'package:my_first_flutterapp/detailwisata_page.dart';
import 'package:my_first_flutterapp/model/wisata_model.dart';

class ListWisataPage extends StatelessWidget {
  const ListWisataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Room"),
      ),
      body: ListView.builder(
          //menghitung total data yang akan ditampilkan
          itemCount: WisataData.itemCount,
          itemBuilder: (context, index) {
            WisataModel wisata = WisataData.getItemWisata(index)!;
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailWisataPage(wisataDetail: wisata,)));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 7,
                  color: Colors.red[900],
                  shadowColor: Colors.red[900],
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/gambar/${wisata.gambar}",
                          width: 100,
                          height: 100,
                          fit: BoxFit.fill,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            wisata.namaWisata ?? "-",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
