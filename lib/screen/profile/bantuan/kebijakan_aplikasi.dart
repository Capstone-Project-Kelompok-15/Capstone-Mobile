import 'package:capstone_mobile/style/font_style.dart';
import 'package:flutter/material.dart';

class KebijakanAplikasiScreen extends StatefulWidget {
  const KebijakanAplikasiScreen({super.key});

  @override
  State<KebijakanAplikasiScreen> createState() =>
      _KebijakanAplikasiScreenState();
}

class _KebijakanAplikasiScreenState extends State<KebijakanAplikasiScreen> {
  List<String> str = [
    "Tujuan Aplikasi: Aplikasi forum group discussion ini bertujuan untuk memfasilitasi komunikasi dan kolaborasi antara mahasiswa dalam kelompok studi mereka. Aplikasi ini dirancang untuk meningkatkan keterlibatan, pemahaman, dan pertukaran informasi antar anggota kelompok.",
    "Privasi Pengguna: Aplikasi ini menghormati privasi pengguna. Data pribadi yang dikumpulkan dalam aplikasi ini hanya akan digunakan sesuai dengan Kebijakan Privasi yang telah ditetapkan. Kami akan menjaga kerahasiaan data pengguna dan tidak akan memberikannya kepada pihak ketiga tanpa izin pengguna.",
    "Perilaku dan Etika Pengguna: Pengguna aplikasi diharapkan untuk berperilaku dengan sopan dan menghormati anggota lain dalam diskusi. Pengguna tidak diperbolehkan untuk menyebarkan konten yang melanggar hukum, mengandung kebencian, atau memfitnah. Pengguna juga diharapkan untuk menghindari penggunaan kata-kata kasar atau mengganggu yang dapat mengganggu pengalaman diskusi kelompok.",
    "Kepemilikan Konten: Konten yang dibagikan oleh pengguna dalam aplikasi tetap menjadi milik pengguna yang bersangkutan. Namun, dengan menggunakan aplikasi ini, pengguna memberikan izin kepada anggota lain dalam grup diskusi untuk melihat, membaca, dan berinteraksi dengan konten yang dibagikan.",
    "Pelanggaran Hak Cipta: Pengguna tidak diperkenankan untuk membagikan atau menggunakan konten yang melanggar hak cipta orang lain tanpa izin yang sesuai. Jika ada laporan tentang pelanggaran hak cipta, kami akan mengambil langkah-langkah yang diperlukan, termasuk menghapus konten yang melanggar.",
    "Moderasi Grup Diskusi: Grup diskusi dalam aplikasi ini dapat memiliki moderator yang bertanggung jawab untuk memantau aktivitas dan memastikan kepatuhan terhadap aturan aplikasi. Moderator memiliki hak untuk menghapus konten yang melanggar, memberikan peringatan, atau mengeluarkan anggota dari grup jika diperlukan.",
    "Keamanan dan Keandalan: Kami berkomitmen untuk menjaga keamanan dan keandalan aplikasi ini. Kami akan secara rutin memperbarui aplikasi untuk memperbaiki bug, meningkatkan keamanan, dan menghadirkan fitur-fitur baru yang bermanfaat bagi pengguna.",
    "Dukungan Teknis: Kami menyediakan dukungan teknis bagi pengguna yang mengalami masalah teknis dalam menggunakan aplikasi ini. Pengguna dapat menghubungi tim dukungan kami melalui opsi yang tersedia dalam aplikasi atau melalui alamat email dan media sosial yang tercantum pada situs web resmi.",
    "Penyalahgunaan Aplikasi: Penyalahgunaan aplikasi, termasuk penggunaan yang tidak sah atau mencoba merusak keamanan atau integritas aplikasi, tidak akan ditoleransi. Pengguna yang terbukti melakukan penyalahgunaan dapat dikenai tindakan yang sesuai, termas."
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          controller: ScrollController(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'assets/icon/left3.png',
                        color: Colors.black,
                        scale: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 14.5,
                    ),
                    Text(
                      'Kebijakan Aplikasi',
                      style: regulerBold,
                    )
                  ],
                ),
                const SizedBox(
                  height: 26,
                ),
                Column(
                  children: [
                    Text(
                      'Kebijakan Aplikasi Forum Group Discussion untuk Mahasiswa',
                      style: regulerReguler,
                      textAlign: TextAlign.justify,
                    ),
                    Column(
                      children: List.generate(str.length, (index) {
                        final content = str[index];
                        final number = (index + 1).toString();
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 140,
                              width: 20,
                              child: Text(
                                number,
                                style: regulerReguler,
                              ),
                            ), //bullet text
                            const SizedBox(
                              width: 2,
                            ),
                            Expanded(
                              child: Text(
                                content,
                                style: regulerReguler,
                                textAlign: TextAlign.justify,
                              ), //text
                            )
                          ],
                        );
                      }).toList(),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> profile_orang_lain
