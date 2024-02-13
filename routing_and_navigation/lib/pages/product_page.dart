import 'package:flutter/material.dart';
import 'package:routing_and_navigation/data/dummy/dummy_products.dart';


class ProductPage extends StatelessWidget {
  const ProductPage({super.key, required this.object});

  final Map<String, String> object;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(blogs[int.parse(object['id']!)-1].title, style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text('Author: ${blogs[int.parse(object['id']!)-1].author}', style: const TextStyle(fontSize: 19, fontWeight: FontWeight.w700),),
        
            Text(blogs[int.parse(object['id']!)-1].content, textAlign: TextAlign.justify, style: const TextStyle(fontSize: 18),)
          ],
        ),
      ),
    );
  }
}