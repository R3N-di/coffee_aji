import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardToko extends StatelessWidget {
  final String gambar;
  final String nama;
  final double rating;
  final String jam_buka;
  final String jam_tutup;

  const CardToko({
    required this.gambar,
    required this.nama,
    required this.rating,
    required this.jam_buka,
    required this.jam_tutup,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 240,
      child: Stack(children: [
        Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/$gambar',
                width: double.infinity,
                height: 140,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, top: 15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "$nama",
                          style: GoogleFonts.montserrat(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Text(
                          '$rating',
                          style: GoogleFonts.montserrat(fontSize: 15),
                        ),

                        SizedBox(
                          width: 30,
                        ),

                        // LOGO JAM DAN JAM
                        Icon(
                          Icons.access_time,
                          color: Colors.blueGrey,
                        ),

                        SizedBox(
                          width: 5,
                        ),

                        Text(
                          "$jam_buka - $jam_tutup",
                          style: GoogleFonts.montserrat(color: Colors.blueGrey),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}