import 'dart:ffi';

import 'package:coffee_aji/widgets/card_toko.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_rounded), label: 'Tersimpan'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
        ]),
        body: SingleChildScrollView(
          child: SafeArea(
              child: Column(children: [
            Stack(
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  color: Colors.black,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    width: 54,
                                    height: 54,
                                    decoration: BoxDecoration(
                                        color: Colors.blueAccent,
                                        borderRadius:
                                            BorderRadius.circular(60)),
                                  ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    decoration: BoxDecoration(
                                        color: Colors.blueGrey,
                                        border: Border.all(
                                            color: Colors.black, width: 4),
                                        borderRadius:
                                            BorderRadius.circular(60)),
                                    child: ClipOval(
                                      child: Image.network(
                                          fit: BoxFit.cover,
                                          height: 40,
                                          width: 40,
                                          "https://media.istockphoto.com/photos/hot-pink-textured-glitter-vinyl-wrapping-paper-picture-id1252780013?k=6&m=1252780013&s=612x612&w=0&h=KhE3BssVwOGCimGjcs_-S4IV2BYLbnQR14lIPh4YKSM="),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Halo Rendi, Selamat Datang !",
                                style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Stack(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                // color: Colors.blueAccent,
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Icon(
                                    Icons.notifications_active,
                                    color: Colors.white,
                                    size: 36,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 0,
                                right: 0,
                                child: Container(
                                  height: 18,
                                  width: 18,
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      color: Colors.amberAccent,
                                      borderRadius: BorderRadius.circular(60)),
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      '99',
                                      style: TextStyle(fontSize: 11),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),

                    // SEARCH
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: TextField(
                          cursorHeight: 20,
                          autofocus: false,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              hintText: 'Cari Toko Kopi Favoritmu ...',
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.redAccent, width: 2),
                                  borderRadius: BorderRadius.circular(60))),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Row(children: [
                        CardKategori(
                          gambar: 'coffee-cup.png',
                          title: 'Tubruk',
                        ),
                        CardKategori(
                          gambar: 'expresso.png',
                          title: 'Expresso',
                        ),
                        CardKategori(
                          gambar: 'latte.png',
                          title: 'Latte',
                        ),
                        CardKategori(
                          gambar: 'coffee-beans.png',
                          title: 'Biji',
                        ),
                      ]),
                    ),

                    SizedBox(
                      height: 35,
                    ),

                    // title Tempat Terfavorit
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          Text(
                            "Tempat Tervaforit",
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Image.asset(
                            "assets/icon-tempat.png",
                            width: 25,
                            height: 25,
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 15,
                    ),

                    CardToko(
                        gambar: 'coffee_gambar.jpeg',
                        jam_buka: '10.30',
                        jam_tutup: '17.30',
                        nama: 'Toko Ko Ko Kopi',
                        rating: 4),
                    CardToko(
                        gambar: 'coffee_gambar.jpeg',
                        jam_buka: '10.30',
                        jam_tutup: '17.30',
                        nama: 'Toko Ko Ko Kopi2',
                        rating: 4),
                  ],
                ),
              ],
            ),
          ])),
        ));
  }
}

class CardKategori extends StatelessWidget {
  const CardKategori({
    required this.gambar,
    required this.title,
    super.key,
  });

  final String gambar;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      width: 79.3,
      height: 84,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black,
                spreadRadius: 0.2,
                offset: Offset(0, 2),
                blurRadius: 2)
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('assets/$gambar'),
            height: 35,
            width: 35,
          ),
          SizedBox(
            height: 10,
          ),
          Text("$title"),
        ],
      ),
    );
  }
}
