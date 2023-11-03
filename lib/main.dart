

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providertask/modelclass/providecls.dart';
import 'package:providertask/screens/home.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Provider_class(),
    child: MaterialApp(
      home: Home(),
    ),
  ));
}
