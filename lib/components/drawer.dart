import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:myapp/theme/theme_provider.dart';
import 'package:provider/provider.dart';

// ignore: camel_case_types
class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Theme.of(context).colorScheme.surface,
        child: Center(
          child: CupertinoSwitch(
            value: Provider.of<Themeprovider>(context).isDark,
            onChanged: (value)=>   
             Provider.of<Themeprovider>(context, listen: false).toggleTheme(),
            
          ),
        ),
      );
  }
}
