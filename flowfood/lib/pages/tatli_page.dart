import 'package:flutter/material.dart';

class TatliPage extends StatelessWidget {
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
                imageUrl: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.sozcu.com.tr%2Fhayatim%2Fgurme%2Fcheesecake-nasil-yapilir-iste-kolay-limonulu-ve-frambuazli-cheesecake-tarifi%2F&psig=AOvVaw1yG_RWPAu46N3qISAZVDYO&ust=1694232329200000&source=images&cd=vfe&opi=89978449&ved=0CA4QjRxqFwoTCICO3ZWvmIEDFQAAAAAdAAAAABAI',
                onPressed: () {
                  
                  
                },
                buttonText: 'Frambuazlı Cheescake',
                iconSize: 100,
                imageWidth: 150,
                imageHeight: 150,
              ),
              SizedBox(height: 25), 
              buildImageButton(
                imageUrl: 'https://magnoliatarifi.com/wp-content/uploads/2023/03/donut-tarifi.jpeg',
                onPressed: () {
                 
                  
                },
                buttonText: 'Donut',
                iconSize: 100,
                imageWidth: 150,
                imageHeight: 150,
              
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 16), 
                child: buildImageButton(
                  imageUrl: 'https://kecheese.com.tr/wp-content/uploads/2016/09/keci-sutu-bal-badem-krokan-dondurma.jpg',
                  onPressed: () {
                    
                    
                  },
                  buttonText: 'Kroken Bal Badem Şovu',
                  iconSize: 100,
                  imageWidth: 150,
                  imageHeight: 150,
                ),
              ),
              buildImageButton(
                imageUrl: 'https://s8k8w4m8.rocketcdn.me/wp-content/uploads/2020/10/karemelli-fistikli-snickers-kek-640x445.jpg',
                onPressed: () {
                 
                  
                },
                buttonText: 'Karamelli Fındıklı Kek',
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
    home: TatliPage(),
  ));
}
