import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class MyHabitTile extends StatelessWidget {
  final void Function(bool?)? onChanged;
  final void Function(BuildContext)? editHabit;
  final void Function(BuildContext)? deleteHabit;

  final String text;
  final bool isCompleted;
  const MyHabitTile(
      {super.key,
      required this.isCompleted,
      required this.text,
      required this.editHabit,
      required this.deleteHabit,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(motion: const StretchMotion(), children: [
        SlidableAction(
          onPressed: editHabit,
          backgroundColor: Colors.grey.shade800,
          icon: Icons.edit,
          borderRadius: BorderRadius.circular(10),
        ),
        
        SlidableAction(
          onPressed: deleteHabit,
          backgroundColor: Colors.red,
          icon: Icons.delete,
          borderRadius: BorderRadius.circular(10),
        ),
        
      ]),
      child: GestureDetector(
        onTap: () {
          if (onChanged != null) {
            onChanged!(!isCompleted);
          }
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 120),
          curve: Curves.fastOutSlowIn,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(32)),
              color: isCompleted ? Colors.green : Theme.of(context).colorScheme.secondary),
          padding: const EdgeInsets.all(12),
          child: ListTile(
            title: Text(
              text,
              style:
                  TextStyle(color:  Colors.white),
            ),
            leading: Checkbox(
              value: isCompleted,
              activeColor: isCompleted ? Colors.green : Colors.white,
              checkColor: Colors.white ,
              onChanged: onChanged,
            ),
          ),
        ),
      ),
    );
  }
}
