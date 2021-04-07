//kode utama Aplikasi tampilan awal
import 'package:flutter/material.dart';
import 'HomeItem.dart';
import 'HomeDeskripsi.dart';

//package letak folder Anda
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: AppBar(
                bottom: TabBar(
                  tabs: [
                    Tab(
                      child: Text("List Film"),
                    ),
                    Tab(
                      text: "Deskripsi Film",
                    ),
                  ],
                ),
                backgroundColor: Colors.lime,
                title: Text('Bioskop'),
              ),
              body: TabBarView(children: [
                HomeItem(),
                HomeDeskripsi(),
              ]),
            )));
  }
}
