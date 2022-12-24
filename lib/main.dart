import 'package:event_scheduler/new_event.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Widget> _list = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        appBar: AppBar(
          title: Text("Event Scheduler"),
          backgroundColor: Colors.deepPurple,
        ),
        body: ListView.builder(
              itemCount: _list.length,
              itemBuilder: ((context, index) => _list[index])
        ),
        floatingActionButton: Builder(
          builder: (context) {
            return FloatingActionButton(
              backgroundColor: Colors.deepPurple,
              onPressed: () async {
                String newText = await Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewEventScreen()));
                setState(() {
                  _list.add(
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 21.0),
                        child: Container(
                          width: 50,
                          height: 100,
                          color: Colors.white,
                          child: Center(
                              child: Text(
                                newText,
                                style: TextStyle(fontSize: 20),
                              ),
                          ),
                        ),
                      )
                  );
                });
              },
              child: Icon(Icons.add),
            );
          }
        ),
      ),
    );
  }
}
