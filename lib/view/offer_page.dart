import 'package:flutter/material.dart';
import 'package:olx_app/view/add_product.dart';

class OfferPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('What are you offering?')),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1,
        children: [
          _OfferingCard(image: 'assets/cars.png', text: 'cars'),
          _OfferingCard(image: 'assets/prprty.png', text: 'properties'),
          _OfferingCard(image: 'assets/mobile.png', text: 'mobiles'),
          _OfferingCard(image: 'assets/job.jpeg', text: 'jobs'),
          _OfferingCard(image: 'assets/bike.png', text: 'bikes'),
          _OfferingCard(
            image: 'assets/electrncs.png',
            text: 'electronics & appliances',
          ),
          _OfferingCard(
            image: 'assets/spare.jpeg',
            text: 'commercial vehicles & spares',
          ),
          _OfferingCard(image: 'assets/others.png', text: 'see all categories'),
        ],
      ),
    );
  }
}

class _OfferingCard extends StatelessWidget {
  final String image;
  final String text;

  const _OfferingCard({required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AddProduct()),
        );
      },
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset(image, height: 50), Text(text)],
        ),
      ),
    );
  }
}
