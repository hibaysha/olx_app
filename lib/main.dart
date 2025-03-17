import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:olx_app/controller/olx_provider.dart';
import 'package:olx_app/firebase_options.dart';
import 'package:olx_app/view/login.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
