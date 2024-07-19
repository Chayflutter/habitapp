import 'package:flutter/material.dart';

class MyHabitTile extends StatelessWidget {
  final void Function(bool?)? onChanged;

  final String text;
  final bool isCompleted;
  const MyHabitTile(
      {super.key,
      required this.isCompleted,
      required this.text,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
            color: isCompleted ? Colors.green : Colors.grey.shade200),
        padding: const EdgeInsets.all(12),
        child: ListTile(
          title: Text(
            text,
            style: TextStyle(color: isCompleted ? Colors.white : Colors.black),
          ),
          leading: Checkbox(
            value: isCompleted,
            activeColor: Colors.white,
            checkColor: Colors.black,
            onChanged: onChanged,
          ),
        ),
      ),
    );
  }
}