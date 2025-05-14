import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
                    const Padding(padding: EdgeInsets.only(top: 15)),
                    const Text(
                      'Kategori UMKM',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 10)),
                    const Text(
                      'Temukan Kategori yang Anda Inginkan',
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

                                      const Text(
                                        'Kuliner',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      const Text(
                                        '62 Produk',
                                        style: TextStyle(fontSize: 16),
                                      ),
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
                    ),
                    const Padding(padding: EdgeInsets.only(top: 15)),
                    const Text(
                      'UMKM Terpilih',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 10)),
                    const Text(
                      'Temukan Toko Pilihan Anda',
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
