import 'package:flutter/material.dart';
import 'package:task_manager/ui/screans/cancelled_task_list_screen.dart';
import 'New_task_list_screen.dart';
import 'completed_task_list_screen.dart';
import 'inprogress_task_list_screen.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  static const String name= '/home';

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  int _selectedIndex = 0;
  List<Widget> _screens = [
    NewTaskListScreen(),
    InProgressTaskListScreen(),
    CompletedTaskListScreen(),
    CancelledTaskListScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex ,
          onDestinationSelected: (int index){
          _selectedIndex =index;
          setState(() {});
          },
          destinations: [
        NavigationDestination(icon: Icon(Icons.new_label_outlined), label: 'New Task'),
        NavigationDestination(icon: Icon(Icons.refresh), label: 'Progress'),
        NavigationDestination(icon: Icon(Icons.done), label: 'Completed'),
        NavigationDestination(icon: Icon(Icons.cancel_outlined), label: 'Cancelled'),
      ]),
    );
  }
}
