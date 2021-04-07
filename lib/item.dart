import 'package:flutter/material.dart';
import 'item.dart';

class Item {
  int _id;
  String _genre;
  String _judul;
  int _harga;

  int get id => _id;
  String get genre => this._genre;
  set genre(String value) => this._genre = value;
  String get judul => this._judul;
  set judul(String value) => this._judul = value;
  get harga => this._harga;
  set harga(value) => this._harga = value;
// konstruktor versi 1
  Item(this._genre, this._judul, this._harga);

  // konstruktor versi 2: konversi dari Map ke Item
  Item.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._genre = map['genre'];
    this._judul = map['name'];
    this._harga = map['harga'];
  }
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['genre'] = genre;
    map['judul'] = judul;
    map['harga'] = harga;
    return map;
  }
}
