import 'package:flutter/material.dart';
import 'package:olx_app/controller/olx_provider.dart';
import 'package:olx_app/view/login.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => OlxProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'OLX',
        theme: ThemeData(primaryColor: Colors.black),
        home: LoginPage(),
      ),
    );
  }
}
