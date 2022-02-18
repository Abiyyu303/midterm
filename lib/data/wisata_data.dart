import 'package:my_first_flutterapp/model/wisata_model.dart';

class WisataData {
//set Data Wisata
  static var itemWisata = [
    WisataModel(
        namaWisata: "Bed",
        gambar: "1.jpg",
        webWisata:
            "https://slumberjer.com/rentaroom/images/1_1.jpg"),
    WisataModel(
        namaWisata: "Kitchen",
        gambar: "2.jpg",
        webWisata:
            "https://slumberjer.com/rentaroom/images/1_2.jpg"),
    WisataModel(
        namaWisata: "Toilet",
        gambar: "3.jpg",
        webWisata: "https://slumberjer.com/rentaroom/images/1_3.jpg"),
    WisataModel(
        namaWisata: "TV",
        gambar: "tv.jpg"),
    WisataModel(
        namaWisata: "Living Room",
        gambar: "rt.jpg",
        ),
  ];

  //get all data
  static var itemCount = itemWisata.length; // 15 item

  //get data by index
  static WisataModel? getItemWisata(int index) {
    return itemWisata[index];
  }
}
