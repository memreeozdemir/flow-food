import 'package:flutter/material.dart';

class KokteylPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 61, 145, 179),
        title: Text('Tatlı'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildImageButton(
                imageUrl: 'https://www.seriouseats.com/thmb/LL2bX8-CdJ5M18f-0EMK2J5ecHs=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/20210615-Rusty-Nail-Recipe-liz-voltz-27-20747e6db6454da3bc7769901cb92ce2.jpg',
                onPressed: () {
                  
                  
                },
                buttonText: 'Rusty Nail ',
                iconSize: 100,
                imageWidth: 150,
                imageHeight: 150,
              ),
              SizedBox(height: 25), 
              buildImageButton(
                imageUrl: 'https://sr76beerworks.com/img/cocktail-other-recipes/57/chi-chi.jpg',
                onPressed: () {
                 
                  
                },
                buttonText: 'Chi-Chi',
                iconSize: 100,
                imageWidth: 150,
                imageHeight: 150,
              
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 16), 
                child: buildImageButton(
                  imageUrl: 'https://d17wu0fn6x6rgz.cloudfront.net/img/w/tarif/ogt/2-595.webp',
                  onPressed: () {
                    
                    
                  },
                  buttonText: 'Bloody Mary',
                  iconSize: 100,
                  imageWidth: 150,
                  imageHeight: 150,
                ),
              ),
              buildImageButton(
                imageUrl: 'https://assets.tmecosys.com/image/upload/t_web767x639/img/recipe/ras/Assets/4C0ED255-42A2-4B2D-9A2E-052076A4B041/Derivates/164ff767-d751-4158-90b0-e6c2199a3144.jpg',
                onPressed: () {
                 
                  
                },
                buttonText: 'Gin Fiiz',
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
    home: KokteylPage(),
  ));
}

