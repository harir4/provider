import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providertask/modelclass/providecls.dart';
import 'package:providertask/screens/favorite.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> items = [
      'Time',
      'year',
      'people',
      'way',
      'day',
      'man',
      'thing',
      'women',
      'life',
      'child',
      'wild'
    ];
    final object = Provider.of<Provider_class>(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) => Favorites(),));
          }, label: Text('Favorites')),
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
                title: Text(items[index]),
                trailing: IconButton(
                    onPressed: () {
                      object.favorites(items[index]);
                    },
                    icon: object.icn_change(items[index])
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
