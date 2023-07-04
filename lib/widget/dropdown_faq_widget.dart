// ignore_for_file: unused_field

import 'package:capstone_mobile/style/color_style.dart';
import 'package:capstone_mobile/style/font_style.dart';
import 'package:flutter/material.dart';

class FaqDropDown extends StatefulWidget {
  const FaqDropDown({
    super.key,
  });

  @override
  State<FaqDropDown> createState() => _FaqDropDownState();
}

class _FaqDropDownState extends State<FaqDropDown> {
  List<String> titles = [
    'Batasan Ukuran FIle',
    'Buat Akun Squad Space',
    'Fungsi Utama Aplikasi Squad Space',
    'Kirim Pesan Pribadi',
    'Mencari Topik Baru',
    'Notifikasi Untuk Aktifitas Baru',
    'Unggah File Di Dalam Thread',
    'Buat Akun Squad Space',
  ];

  List<String> subtitles = [
    'Ya, terkadang ada batasan ukuran',
    'Untuk membuat akun pengguna, unduh aplikasi dan ikuti proses pendaftaran yang tercantum di aplikasi',
    'Aplikasi forum group discussion dirancang untuk memfasilitasi diskusi kelompok antara mahasiswa. Melalui aplikasi ini, pengguna dapat berbagi ide, bertukar informasi, dan bekerja sama dalam kelompok studi mereka.Aplikasi forum group discussion dirancang untuk memfasilitasi diskusi kelompok antara mahasiswa. Melalui aplikasi ini, pengguna dapat berbagi ide, bertukar informasi, dan bekerja sama dalam kelompok studi mereka.',
    'Ya, aplikasi ini menyediakan fitur pesan pribadi yang memungkinkan Anda berkomunikasi langsung dengan user lainnya.',
    'Aplikasi squad space memiliki fitur pencarian yang memungkinkan Anda mencari topik diskusi tertentu berdasarkan kata kunci atau label yang terkait dengan topik tersebut.',
    'Ya, aplikasi squad space ini dilengkapi dengan fitur notifikasi yang akan memberi tahu Anda tentang aktivitas baru di grup, seperti postingan baru atau tanggapan pada thread diskusi.',
    'Terdapat opsi untuk mengunggah file di aplikasi squad space. Cari ikon atau tombol yang terkait dengan tindakan tersebut di panel atau menu aplikasi.',
    'Untuk membuat akun pengguna, unduh aplikasi dan ikuti proses pendaftaran yang tercantum di aplikasi.',
  ];

  final bool _customTileExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListView.builder(
          shrinkWrap: true,
          itemCount: titles.length,
          itemBuilder: (context, index) {
            String title = titles[index];
            String subtitle = subtitles[index];
            return Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Card(
                elevation: 0,
                color: typography100,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(
                      color: typography300,
                    )),
                child: Theme(
                  data: Theme.of(context)
                      .copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Text(
                      title,
                      style: regulerBold,
                    ),
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 10),
                        child: Text(
                          subtitle,
                          textAlign: TextAlign.justify,
                          style: regulerReguler,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
