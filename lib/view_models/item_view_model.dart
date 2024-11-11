import 'package:flutter/material.dart';

import '../models/item.dart';

class ItemViewModel extends ChangeNotifier {
  List<Item> items = [
    Item(title: 'Item 1', description: 'This is the description for Item 1'),
    Item(title: 'Item 2', description: 'This is the description for Item 2'),
    Item(title: 'Item 3', description: 'This is the description for Item 3'),
  ];
}
