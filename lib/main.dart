import 'package:flutter/material.dart';
import 'package:todoey/models/TaskList.dart';
import 'Screens/home_page.dart';
import 'package:provider/provider.dart';
import 'package:todoey/Screens/popupscreen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TaskList()),
      ],
      child: Todoey(),
    ),
  );
}


// void main() {
//   runApp(Todoey());
// }
class Todoey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: HomePage()
    );
  }
}
