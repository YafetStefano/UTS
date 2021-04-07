import 'package:flutter/material.dart';
import 'Deskripsi.dart';

class Deskripsi {
  int _id;
  String _kota;
  String _film;
  String _jamTayang;
  String _deskripsi;

  int get id => _id;
  String get kota => this._kota;
  set kota(String value) => this._kota = value;
  String get film => this._film;
  set film(String value) => this._film = value;
  String get jamTayang => this._jamTayang;
  set ukuran(String value) => this._jamTayang = value;
  String get deskripsi => this._deskripsi;
  set deskripsi(String value) => this._deskripsi = value;

// konstruktor versi 1
  Deskripsi(this._kota, this._film, this._jamTayang, this._deskripsi);

  // konstruktor versi 2: konversi dari Map ke Item
  Deskripsi.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._kota = map['kota'];
    this._film = map['film'];
    this._jamTayang = map['jamTayang'];
    this._deskripsi = map['deskripsi'];
  }
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['kota'] = kota;
    map['film'] = film;
    map['jamTayang'] = jamTayang;
    map['deskripsi'] = deskripsi;
    return map;
  }
}
