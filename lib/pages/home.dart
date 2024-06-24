import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/theme/themeProvider.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        backgroundColor: Theme.of(context).colorScheme.surface,
        child: Center(
          child: CupertinoSwitch(
            value: Provider.of<Themeprovider>(context).isDark,
            onChanged: (value)=>   
             Provider.of<Themeprovider>(context, listen: false).toggleTheme(),
            
          ),
        ),
      ),
    );
  }
}
