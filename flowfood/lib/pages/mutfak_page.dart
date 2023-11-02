import 'package:flutter/material.dart';
import 'tatli_page.dart'; 
import 'yemek_page.dart';
import 'kokteyl_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MutfakPage(),
    );
  }
}

class MutfakPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 61, 145, 179),
        title: Text('Mutfak',
        style: TextStyle(
          color: Colors.black,
          fontSize: 15.0,
          fontWeight: FontWeight.bold,
        ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 61, 145, 179), 
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TatliPage()),
                      );
                    },
                    style: TextButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(24.0),
                      backgroundColor: Color.fromARGB(255, 79, 136, 187),
                    ),
                    child: Column(
                      children: [
                        Image.network(
                          'https://images.pexels.com/photos/1126359/pexels-photo-1126359.jpeg?auto=compress&cs=tinysrgb&w=1600',
                          width: 100,
                          height: 100,
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Tatlı',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => YemekPage()),
                      );

                    },
                    style: TextButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(24.0),
                      backgroundColor: Color.fromARGB(255, 79, 136, 187),
                    ),
                    child: Column(
                      children: [
                        Image.network(
                          'https://siradisidigital.com/upload/yemek-fotografi-nasil-cekilir-ankara-dijital-ajans-siradisi-digital-5.jpg',
                          width: 100,
                          height: 100,
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Yemek',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KokteylPage()),
                );
     
              },
              style: TextButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(24.0),
                backgroundColor: Color.fromARGB(255, 79, 136, 187),
              ),
              child: Column(
                children: [
                  Image.network(
                    'https://st2.depositphotos.com/4822529/7794/i/450/depositphotos_77941430-stock-photo-refreshing-cocktails-with-lime-mint.jpg',
                    width: 100,
                    height: 100,
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Kokteyl',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
