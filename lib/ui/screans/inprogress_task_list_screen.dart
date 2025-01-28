import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/screen_background.dart';
import '../widgets/task_item_widget.dart';
import '../widgets/task_summary_counter.dart';
import '../widgets/tm_app_bar.dart';

class InProgressTaskListScreen extends StatefulWidget {
  const InProgressTaskListScreen({super.key});

  @override
  State<InProgressTaskListScreen> createState() => _InProgressTaskListScreenState();
}

class _InProgressTaskListScreenState extends State<InProgressTaskListScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: TMappBar(),
      body: ScreenBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: _buildTaskListView(),
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
}


