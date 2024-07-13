import 'package:flutter/material.dart';
import 'package:myapp/database/habit_database.dart';
import 'package:myapp/pages/home.dart';
import 'package:myapp/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Habitdatabase.initialize();
  await Habitdatabase().saveFirstLaunchDate();

  runApp(
    // ChangeNotifierProvider(create: (context)=> Themeprovider(),
    // child: const MyApp(),
    // )

  MultiProvider(providers: [

    ChangeNotifierProvider(create: (context)=> Habitdatabase()
    ),
    ChangeNotifierProvider(create: (context)=> Themeprovider(),
    )
  ],
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

