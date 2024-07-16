import 'package:flutter/material.dart';
import 'package:myapp/components/drawer.dart';
import 'package:myapp/database/habit_database.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController textController = TextEditingController();

  void createNewHabit() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: TextField(
                controller: textController,
                decoration:
                    const InputDecoration(hintText: "Let's create a habit!"),
              ),
              actions: [
                MaterialButton(
                  onPressed: () {
                    String newHabitName = textController.text;

                    context.read<Habitdatabase>().addHabit(newHabitName);

                    Navigator.pop(context);
                    textController.clear();

                  },
                    child: Text("Save"),
                ),
                MaterialButton(onPressed: () {
                    Navigator.pop(context);
                    textController.clear();

                },color: Colors.amber,
                    child: Text("Cancel"),
                )
              ],
            ));
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
