import 'package:flutter/material.dart';
import 'package:myapp/components/drawer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('thing'),),
      drawer: const MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        // elevation: 0,
        backgroundColor: Colors.greenAccent,
        child: const Icon(Icons.add, color: Colors.black,),
      ),
    );
  }
}
