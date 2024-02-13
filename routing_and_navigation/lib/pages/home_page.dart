import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:routing_and_navigation/data/dummy/dummy_products.dart';
import 'package:routing_and_navigation/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blog', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),),
        centerTitle: true,
      ),

      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 10.9, vertical: 6.0),
        itemCount: blogs.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: ()=> context.goNamed(Routes.product, extra: {'id': blogs[index].id.toString()}),
            contentPadding: const EdgeInsets.all(20),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(23)),
            tileColor: Colors.amber.shade300,
            title: Text(blogs[index].title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text('Author: ${blogs[index].author}'),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  blogs[index].content,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          );
        },

        separatorBuilder: (context, state)=> Divider(),
      ),
    );
  }
}
