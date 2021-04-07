import 'package:flutter/material.dart';
import 'Deskripsi.dart';

class EntryForm extends StatefulWidget {
  final Deskripsi deskripsi;
  EntryForm(this.deskripsi);
  @override
  EntryFormState createState() => EntryFormState(this.deskripsi);
}

//class controller
class EntryFormState extends State<EntryForm> {
  Deskripsi deskripsi;
  EntryFormState(this.deskripsi);
  TextEditingController kotaController = TextEditingController();
  TextEditingController filmController = TextEditingController();
  TextEditingController jamTayangController = TextEditingController();
  TextEditingController deskripsiController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //kondisi
    if (deskripsi != null) {
      kotaController.text = deskripsi.kota;
      filmController.text = deskripsi.film;
      jamTayangController.text = deskripsi.jamTayang;
      deskripsiController.text = deskripsi.deskripsi;
    }
    //rubah
    return Scaffold(
        appBar: AppBar(
          title: deskripsi == null ? Text('Tambah') : Text('Ubah'),
          leading: Icon(Icons.keyboard_arrow_left),
        ),
        body: Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
            child: ListView(
              children: <Widget>[
                //name
                Padding(
                  padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                  child: TextField(
                    controller: kotaController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: 'Nama Kota',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onChanged: (value) {
                      //
                    },
                  ),
                ),
                //kode
                Padding(
                  padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                  child: TextField(
                    controller: filmController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: 'Judul Film',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onChanged: (value) {
                      //
                    },
                  ),
                ),
                //ukuran
                Padding(
                  padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                  child: TextField(
                    controller: jamTayangController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: 'jamTayang',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onChanged: (value) {
                      //
                    },
                  ),
                ),
                //deskripsi
                Padding(
                  padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                  child: TextField(
                    controller: deskripsiController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: 'Deskripsi',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onChanged: (value) {
                      //
                    },
                  ),
                ),
                // tombol button
                Padding(
                  padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                  child: Row(
                    children: <Widget>[
                      // tombol simpan
                      Expanded(
                        child: RaisedButton(
                          color: Theme.of(context).primaryColorDark,
                          textColor: Theme.of(context).primaryColorLight,
                          child: Text(
                            'Save',
                            textScaleFactor: 1.5,
                          ),
                          onPressed: () {
                            if (deskripsi == null) {
                              // tambah data
                              deskripsi = Deskripsi(
                                kotaController.text,
                                filmController.text,
                                jamTayangController.text,
                                deskripsiController.text,
                              );
                            } else {
                              // ubah data
                              deskripsi.kota = kotaController.text;
                              deskripsi.film = filmController.text;
                              deskripsi.ukuran = jamTayangController.text;
                              deskripsi.deskripsi = deskripsiController.text;
                            }
                            // kembali ke layar sebelumnya dengan membawa objek item
                            Navigator.pop(context, deskripsi);
                          },
                        ),
                      ),
                      Container(
                        width: 5.0,
                      ),
                      // tombol batal
                      Expanded(
                        child: RaisedButton(
                          color: Theme.of(context).primaryColorDark,
                          textColor: Theme.of(context).primaryColorLight,
                          child: Text(
                            'Cancel',
                            textScaleFactor: 1.5,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )));
  }
}
