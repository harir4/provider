import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../modelclass/providecls.dart';
class Favorites extends StatelessWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final object = Provider.of<Provider_class>(context);
    List itemStore=object.favoriteItem;

    return Scaffold(
      body:ListView.builder(
          itemCount: itemStore.length,
          itemBuilder: (context, index) {
            return ListTile(
                title: Text(itemStore[index]),
                trailing: IconButton(
                    onPressed: () {
                      object.favorites(itemStore[index]);
                    },
                    icon: object.icn_change(itemStore[index])
                        ? Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                        : Icon(
                      Icons.favorite,
                      color: Colors.black,
                    )));
          }),
    );
  }
}
