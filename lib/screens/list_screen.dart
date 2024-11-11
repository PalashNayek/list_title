import 'package:flutter/material.dart';

import '../di/setup_locator.dart';
import '../view_models/item_view_model.dart';
import 'details_screen.dart';

class ListScreen extends StatelessWidget {
  final ItemViewModel viewModel = getIt<ItemViewModel>();

  ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List of Items')),
      body: ListView.builder(
        itemCount: viewModel.items.length,
        itemBuilder: (context, index) {
          final item = viewModel.items[index];
          return ListTile(
            title: Text(item.title),
            subtitle: Text(item.description),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailScreen(item: item)),
              );
            },
          );
        },
      ),
    );
  }
}
