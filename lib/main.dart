import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'widgets/MenuCategoryCard.dart';
import 'widgets/UmkmPopularCard.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            leading: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            title:
                const Text('Toko UMKNM', style: TextStyle(color: Colors.white)),
            flexibleSpace: Container(
              decoration: const BoxDecoration(color: Color(0xFF13544e)),
            ),
          ),
          bottomNavigationBar: menu(),
          body: TabBarView(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          height: 120,
                          color: const Color(0xFF13544e),
                        ),
                        Positioned(
                            bottom: -25,
                            left: 16,
                            right: 16,
                            child: Material(
                              elevation: 4,
                              borderRadius: BorderRadius.circular(30),
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: 'Mau Kemana Dulu Ya?',
                                    prefixIcon: const Icon(Icons.search),
                                    suffixIcon: const Icon(
                                        Icons.restaurant_menu,
                                        color: Color(0xFF13544e)),
                                    filled: true,
                                    fillColor: Colors.white,
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 12),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: BorderSide.none)),
                              ),
                            ))
                      ],
                    ),
                    const SizedBox(height: 40),
                    SizedBox(
                      height: 120,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        children: const [
                          MenuCategoryCard(
                              icon: Icons.map,
                              title: 'Resto',
                              subtitle: 'Terdekat'),
                          MenuCategoryCard(
                              icon: Icons.apartment,
                              title: 'Penginapan',
                              subtitle: 'Termurah',
                              badgeText: '75%'),
                          MenuCategoryCard(
                              icon: Icons.beach_access,
                              title: 'Destinasi',
                              subtitle: 'Tereekat'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color(0xFF13544e),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'UMKM Terpilih',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 1),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Temukan Toko Pilihan Anda',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          SizedBox(height: 10),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                UmkmPopularCard(
                                    imageAsset: 'assets/appBarPattern.png',
                                    title: 'Jualan Dhana Cireng Isi',
                                    produk: 1,
                                    pemilik: 'DHANA HERAWATI',
                                    idUmkm: 1.toString()),
                                UmkmPopularCard(
                                    imageAsset: 'assets/appBarPattern.png',
                                    title: 'Kedai Kpoi Asik',
                                    produk: 4,
                                    pemilik: 'ANINDITHYA',
                                    idUmkm: 2.toString())
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 15)),
                    const Text(
                      'Produk Terbaru',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 10)),
                    const Text(
                      'Temukan Produk Terbaru Incaran Anda',
                      style: TextStyle(fontSize: 16),
                    ),
                    Padding(padding: EdgeInsets.all(15)),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 4,
                            child: Column(
                              children: [
                                // Gambar Produk
                                ClipRRect(
                                  borderRadius: const BorderRadius.vertical(
                                      top: Radius.circular(12)),
                                  child: Image.asset(
                                    'assets/appBarPattern.png',
                                    width: 250,
                                    height: 250,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(12),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // Nama Produk
                                      Text(
                                        'JUALAN DHANA CIRENG ISI',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      SizedBox(height: 8),

                                      // Info Produk
                                      Row(
                                        children: [
                                          Icon(Icons.shopping_bag_outlined,
                                              size: 18),
                                          SizedBox(width: 6),
                                          Text('1 Produk'),
                                        ],
                                      ),
                                      SizedBox(height: 4),
                                      Row(
                                        children: [
                                          Icon(Icons.link, size: 18),
                                          SizedBox(width: 6),
                                          Text('Lihat Instagram'),
                                        ],
                                      ),
                                      SizedBox(height: 12),

                                      // Nama Pemilik
                                      Row(
                                        children: [
                                          Icon(Icons.account_circle,
                                              color: Colors.green),
                                          SizedBox(width: 6),
                                          Text(
                                            'DHANA HERAWATY',
                                            style: TextStyle(
                                              color: Colors.blue,
                                              decoration:
                                                  TextDecoration.underline,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 4,
                            child: Column(
                              children: [
                                // Gambar Produk
                                ClipRRect(
                                  borderRadius: const BorderRadius.vertical(
                                      top: Radius.circular(12)),
                                  child: Image.asset(
                                    'assets/appBarPattern.png',
                                    width: 250,
                                    height: 250,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(12),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // Nama Produk
                                      Text(
                                        'JUALAN DHANA CIRENG ISI',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      SizedBox(height: 8),

                                      // Info Produk
                                      Row(
                                        children: [
                                          Icon(Icons.shopping_bag_outlined,
                                              size: 18),
                                          SizedBox(width: 6),
                                          Text('1 Produk'),
                                        ],
                                      ),
                                      SizedBox(height: 4),
                                      Row(
                                        children: [
                                          Icon(Icons.link, size: 18),
                                          SizedBox(width: 6),
                                          Text('Lihat Instagram'),
                                        ],
                                      ),
                                      SizedBox(height: 12),

                                      // Nama Pemilik
                                      Row(
                                        children: [
                                          Icon(Icons.account_circle,
                                              color: Colors.green),
                                          SizedBox(width: 6),
                                          Text(
                                            'DHANA HERAWATY',
                                            style: TextStyle(
                                              color: Colors.blue,
                                              decoration:
                                                  TextDecoration.underline,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: const SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Card(
                        child: ListTile(
                          leading: Icon(Icons.list_alt),
                          title: Text('Layanan 1'),
                          subtitle: Text('Detail Layanan 1'),
                          trailing: Icon(Icons.arrow_forward),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Center(child: Text('Content for Tab 3')),
            ],
          ),
        ),
      ),
    );
  }
}

Widget menu() {
  return Container(
    color: const Color(0xFF13544e),
    child: const TabBar(
      labelColor: Colors.white,
      unselectedLabelColor: Colors.white54,
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorPadding: EdgeInsets.all(5.0),
      indicatorColor: Colors.white,
      tabs: [
        Tab(
          icon: Icon(Icons.home),
          child: Text(
            'Dashboard',
            style: TextStyle(color: Colors.white),
          ),
        ),
        Tab(
          icon: Icon(
            Icons.list_alt,
          ),
          child: Text('Layanan', style: TextStyle(color: Colors.white)),
        ),
        Tab(text: 'Tab 3'),
      ],
    ),
  );
}
