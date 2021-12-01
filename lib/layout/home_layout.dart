import 'package:flutter/material.dart';
import 'package:fproject/modules/archived_tasks/archived_tasks_screen.dart';
import 'package:fproject/modules/done_tasks/done_tasks_screen.dart';
import 'package:fproject/modules/new_tasks/new_tasks_screen.dart';

class HomeLayout extends StatefulWidget {

  @override
  _HomeLayoutState createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  List<Widget> sceen=[
    NewTasksScreen(),
    DoneTasksScreen(),
    ArchivedTasksScreen(),
  ];
  List<String> text=[
    'Tasks',
    'Done Tasks',
    'Archived Tasks',

  ];
  int currentIndex =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(text[currentIndex],
        ),
      ),
      body: sceen[currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: (){
        },
        child: Icon(
          Icons.add,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex = index;
          });

        },
        items: [
          BottomNavigationBarItem(icon:
          Icon(Icons.menu),
          label: 'Tasks',),
          BottomNavigationBarItem(icon:
          Icon(Icons.check_circle_outline),
            label: 'Done',),
          BottomNavigationBarItem(icon:
          Icon(Icons.archive_outlined),
            label: 'Archived',),

        ],
      ),
    );
  }
}
