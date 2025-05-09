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
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Card(
                              child: Container(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset('assets/appBarPattern.png',
                                    width: 100, height: 100),
                                const Text('Dashboard 1'),
                              ],
                            ),
                          )),
                          Container(
                            width: 200,
                            height: 100,
                            padding: const EdgeInsets.all(5),
                            child: const Card(
                                child: Center(child: Text('Dashboard 2'))),
                          ),
                          const Text('Dashboard 2'),
                          const Text('Dashboard 3'),
                          const Text('Dashboard 4'),
                          const Text('Dashboard 5'),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Card(
                              child: Container(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset('assets/appBarPattern.png',
                                    width: 100, height: 100),
                                const Text('Dashboard 1'),
                              ],
                            ),
                          )),
                          Container(
                            width: 200,
                            height: 100,
                            padding: const EdgeInsets.all(5),
                            child: const Card(
                                child: Center(child: Text('Dashboard 2'))),
                          ),
                          const Text('Dashboard 2'),
                          const Text('Dashboard 3'),
                          const Text('Dashboard 4'),
                          const Text('Dashboard 5'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Card(
                        child: ListTile(
                          leading: Image.asset('assets/appBarPattern.png',
                              width: 50, height: 50),
                          title: const Text('Dashboard 1'),
                          subtitle: const Text('Detail Dashboard 1'),
                          trailing: const Icon(Icons.arrow_forward),
                        ),
                      ),
                      const Card(
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
