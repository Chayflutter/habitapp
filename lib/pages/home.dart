import 'package:flutter/material.dart';
import 'package:myapp/components/drawer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}


class _HomeState extends State<Home> {
void createNewHabit() {
  showDialog(context: context, builder: (context)=>AlertDialog());
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Text('thing'),
      ),
      drawer: const MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewHabit,
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 20, 247, 137),
        child: const Icon(
          Icons.add,
          color: Colors.black,
          size: 28,
        ),
      ),
    );
  }
}
