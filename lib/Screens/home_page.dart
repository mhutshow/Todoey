import 'package:flutter/material.dart';
import 'package:todoey/Screens/popupscreen.dart';
import 'package:todoey/Screens/wigets.dart';
import 'package:todoey/Screens/taskView.dart';
import 'package:todoey/models/Task.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/TaskList.dart';
import 'package:todoey/models/DataSaver.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState(){
    super.initState();
  }
  void loadingData()async{
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(context: context , builder: (context)=> BottomPopup(),
          );
        },
        backgroundColor: Colors.blue,
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 40, top: 60, right: 30, bottom: 30),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 40,
                    child: Icon(
                      Icons.list,
                      size: 40,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Todoey',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    '${Provider.of<TaskList>(context).getLength} Task',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 10 , left: 40),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: TaskView(),
            ),
          ),
        ],
      ),
    );
  }
}

