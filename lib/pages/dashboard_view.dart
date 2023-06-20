import 'package:flutter/material.dart';
import 'package:id_ac_bsi_4b_12210426_jemput_sampah/pages/home_view.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [BottomNavigationBarItem(icon: HomePage() ),]
        ),
      body: Stack(
        children: [
          _BackgroundDashboard(),

          _InformasiPengguna(),

          Card(
            margin: EdgeInsets.fromLTRB(0, 150, 0, 0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              width: double.infinity,            
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Text('Jemput Sampah',
                    style: TextStyle(
                      fontSize: 15,                     
                    ),),

                  _ListBerita(),

                  Wrap(
                    children: [
                      _TombolMenu(gambar: 'assets/Icon1.png',),
                      _TombolMenu(gambar: 'assets/Icon2.png',),
                      _TombolMenu(gambar: 'assets/Icon3.png',),
                    ],
                  ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _TombolMenu extends StatelessWidget {
  final String gambar;
  const _TombolMenu({
    super.key,
    this.gambar = '',
  });

  @override
  Widget build(BuildContext context) {
    return Container(     
      padding: EdgeInsets.all(13),
      margin: EdgeInsets.all(8),
      child: Image.asset('gambar',
      width: 40,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 227, 196, 96),
        boxShadow: [
        BoxShadow(
        color: Color.fromARGB(33, 227, 196, 96),
        blurRadius: 2,
        spreadRadius: 2,
        offset: Offset(2, 2)

        ),
        ]                    
      ),
    );
  }
}

class _ListBerita extends StatelessWidget {
  const _ListBerita({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _ItemBerita(assetgambar: 'assets/berita1.png',),
          _ItemBerita(assetgambar: 'assets/berita2.png',),
          _ItemBerita(assetgambar: 'assets/berita3.png',),
        ],
      ),
    );
  }
}

class _ItemBerita extends StatelessWidget {
  final String assetgambar;
  const _ItemBerita({
    super.key,
    this.assetgambar = ''
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(assetgambar,
        width: 250,
        height: 130,
        fit: BoxFit.cover,
        ),
      ),
    );

  }
}

class _InformasiPengguna extends StatelessWidget {
  const _InformasiPengguna({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(22, 60, 22, 10),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset('assets/edit.png',
            height: 90,
            width: 90,
            fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 25,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Hi, Yusuf',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25
                ),
                ),
                Text('yusuf45@gmail.com',
                 style: TextStyle(
                color: Colors.white,
                fontSize: 18
                 ),
                )
              ],
            ),
          ),
    
           Image.asset('assets/bell.png', width: 30,)
        ],
      ),
    );
  }
}

class _BackgroundDashboard extends StatelessWidget {
  const _BackgroundDashboard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/sampah.png',
    height: 300,
    width: double.infinity,
    fit: BoxFit.cover,
    );
  }
}