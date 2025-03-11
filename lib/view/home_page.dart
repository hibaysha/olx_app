import 'package:flutter/material.dart';
import 'package:olx_app/controller/olx_provider.dart';
import 'package:olx_app/view/offer_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<OlxProvider>(
      builder:
          (context, olxPrvdr, child) => Scaffold(
            appBar: AppBar(
              leading: Icon(Icons.search),
              title: TextField(
                decoration: const InputDecoration(
                  hintText: 'Search',
                  border: InputBorder.none,
                ),
              ),
              actions: [
                IconButton(
                  icon: const Icon(Icons.heart_broken),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.notifications),
                  onPressed: () {},
                ),
              ],
            ),
            body: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _Container(image: 'assets/cars.png', text: 'Cars'),
                    _Container(image: 'assets/prprty.png', text: 'Properties'),
                    _Container(image: 'assets/mobile.png', text: 'Mobiles'),
                    _Container(image: 'assets/job.jpeg', text: 'Jobs'),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _Container(image: 'assets/bike.png', text: 'Bikes'),
                    _Container(
                      image: 'assets/electrncs.png',
                      text: 'Electronics,\nAppliances',
                    ),
                    _Container(
                      image: 'assets/spare.jpeg',
                      text: 'Vehicles &\nSpares',
                    ),
                    _Container(image: 'assets/others.png', text: 'others'),
                  ],
                ),
                SizedBox(height: 16),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Fresh Recommendations',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OfferPage()),
                );
              },
              child: Icon(Icons.add),
            ),
          ),
    );
  }
}

class _Container extends StatelessWidget {
  final String image;
  final String text;

  const _Container({required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      child: Column(
        children: [
          Container(
            width: 75,
            height: 75,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(text, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
