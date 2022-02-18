import 'package:flutter/material.dart';
import 'package:my_first_flutterapp/model/wisata_model.dart';

class DetailWisataPage extends StatelessWidget {
  WisataModel? wisataDetail;
  DetailWisataPage({Key? key, this.wisataDetail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(wisataDetail?.namaWisata ?? "-"),
      ),
      body: Column(
        children: [
          Container(
              width: double.infinity,
              child: Image.asset(
                "assets/gambar/${wisataDetail?.gambar}",
                fit: BoxFit.fill,
              )),
          Text(
            wisataDetail?.namaWisata ?? "-",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
