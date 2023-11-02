import 'package:flowfood/pages/kokteyl_page.dart';
import 'package:flowfood/pages/tatli_page.dart';
import 'package:flowfood/pages/yemek_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MenuOlusturPage());

class MenuOlusturPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentPageIndex = 0;

  List<Widget> _pages = [
    Page1(),
    Page2(),
    Page3(),
  ];

  void _changePage(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 61, 145, 179),
        title: Text('Menu Oluştur'),
      ),
      body: _pages[_currentPageIndex],
      backgroundColor: Color.fromARGB(255, 61, 145, 179),
      
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.cake),
              title: Text('Tatlı'),
              onTap: () {
                Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TatliPage()),
                      );

              },
            ),
            ListTile(
              leading: Icon(Icons.fastfood),
              title: Text('Yemek'),
              onTap: () {
                Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => YemekPage()),
                      );
              },
            ),
            ListTile(
              leading: Icon(Icons.local_drink),
              title: Text('Kokteyl'),
              onTap: () {
                Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => KokteylPage()),
                      );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/a.png", width: 200, height: 200),
        ]
    ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(''),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(''),
    );
  }
}
