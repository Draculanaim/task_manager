import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/screen_background.dart';
import '../widgets/task_item_widget.dart';
import '../widgets/task_summary_counter.dart';
import '../widgets/tm_app_bar.dart';

class NewTaskListScreen extends StatefulWidget {
  const NewTaskListScreen({super.key});

  @override
  State<NewTaskListScreen> createState() => _NewTaskListScreenState();
}

class _NewTaskListScreenState extends State<NewTaskListScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: TMappBar(),
      body: ScreenBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildTaskSummary(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: _buildTaskListView(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ListView _buildTaskListView() {
    return ListView.builder(
              shrinkWrap: true,
              primary: false,
              itemCount: 10,
              itemBuilder: (context, index) {
                return TaskItemWidget();
              },
            );
  }

  SingleChildScrollView _buildTaskSummary() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            TaskStatusSummaryCounter(
              tittle: 'New',
              count: '12',
            ),
            TaskStatusSummaryCounter(
              tittle: 'Progress',
              count: '12',
            ),
            TaskStatusSummaryCounter(
              tittle: 'Completed',
              count: '12',
            ),
            TaskStatusSummaryCounter(
              tittle: 'Cancelled',
              count: '12',
            ),
          ],
        ),
      ),
    );
  }
}


