import 'package:flutter/material.dart';

class YemekPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 61, 145, 179),
        title: Text('Yemek'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildImageButton(
                imageUrl: 'https://i.nefisyemektarifleri.com/2022/09/26/bonfile-nasil-pisirilir-en-iyi-puf-noktalari-10-tarif-1.jpg',
                onPressed: () {
                  
                  
                },
                buttonText: 'Bonfile Dilimleri',
                iconSize: 100,
                imageWidth: 150,
                imageHeight: 150,
              ),
              SizedBox(height: 25), 
              buildImageButton(
                imageUrl: 'https://www.unileverfoodsolutions.com.tr/dam/global-ufs/mcos/TURKEY/calcmenu/recipes/TR-recipes/2023/march/header/4.jpg',
                onPressed: () {
                 
                  
                },
                buttonText: 'Izgara Levrek',
                iconSize: 100,
                imageWidth: 150,
                imageHeight: 150,
              
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 16), 
                child: buildImageButton(
                  imageUrl: 'https://www.sahrapsoysal.com/resim-tatli-eksi-soslu-karides-tarifi-3467.jpg',
                  onPressed: () {
                    
                    
                  },
                  buttonText: 'Şefin Sosuyla Karides',
                  iconSize: 100,
                  imageWidth: 150,
                  imageHeight: 150,
                ),
              ),
              buildImageButton(
                imageUrl: 'https://i.nefisyemektarifleri.com/2019/01/30/saman-patates-esliginde-pideli-izgara-kofte-3.jpg',
                onPressed: () {
                 
                  
                },
                buttonText: 'Saman Patates İle Köfte',
                iconSize: 100,
                imageWidth: 150,
                imageHeight: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildImageButton({
    required String imageUrl,
    required VoidCallback onPressed,
    required String buttonText,
    double iconSize = 24.0,
    double imageWidth = 40.0,
    double imageHeight = 40.0,
  }) {
    return Row(
      children: [
        IconButton(
          onPressed: onPressed,
          iconSize: iconSize,
          icon: Image.network(
            imageUrl,
            width: imageWidth,
            height: imageHeight,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 8),
        Text(
          buttonText,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: YemekPage(),
  ));
}