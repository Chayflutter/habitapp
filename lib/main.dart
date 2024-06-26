import 'package:flutter/material.dart';
import 'package:myapp/pages/home.dart';
import 'package:myapp/theme/themeProvider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context)=> Themeprovider(),
    child: const MyApp(),
    )
  );

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const Home(),
      theme: Provider.of<Themeprovider>(context).themeData,
    );
  }
}

