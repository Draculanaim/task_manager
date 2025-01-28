import 'package:flutter/material.dart';

class TaskStatusSummaryCounter extends StatelessWidget {
  const TaskStatusSummaryCounter({
    super.key, required this.tittle, required this.count,
  });

  final String tittle;
  final String count;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Card(
      elevation: 0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32,vertical: 16),
        child: Column(
          children: [
            Text(count,style: textTheme.titleLarge,),
            Text(tittle,style: textTheme.titleSmall,),
          ],
        ),
      ),
    );
  }
}