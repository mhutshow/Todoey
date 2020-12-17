// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:todoey/models/Task.dart';
// import 'package:todoey/models/TaskList.dart';
// class SaveData{
//   SharedPreferences prefs;
//   initSharedPreferences() async{
//     prefs = await SharedPreferences.getInstance();
//
//     void saveData(){
//       List<String> spList= _tasks.map((item)=> json.encode(item.toMap())).toList();
//       prefs.setStringList('list', spList);
//
//     }
//     void readData(){
//       List<String> spList= prefs.getStringList('list');
//       _tasks = spList.map((item)=> Task.fromMap(json.decode(item))).toList();
//       print('Data Read Successfully');
//     }
//   }
// }