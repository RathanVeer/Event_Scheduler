import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewEventScreen extends StatefulWidget {
  const NewEventScreen({Key? key}) : super(key: key);

  @override
  State<NewEventScreen> createState() => _NewEventScreenState();
}

class _NewEventScreenState extends State<NewEventScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        title: Text("New Event"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              style: TextStyle(color: Colors.white,height: 2.0),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(50),
                ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  prefixIcon: Icon(Icons.event,color: Colors.white,),
                  hintText: "Event",
                  hintStyle: TextStyle(color: Colors.white),
                filled: true,
                fillColor: Colors.deepPurple,
              ),
              controller: _textEditingController,
            ),
            Builder(
              builder: (context) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(380, 60),
                      textStyle: TextStyle(fontSize: 21),
                      primary: Colors.indigo[100],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      )
                    ),
                      onPressed: () {
                        String newEventText = _textEditingController.text;
                        Navigator.of(context).pop(newEventText);
                      },
                      child: Text('ADD')
                  ),
                );
              }
            ),
          ],
        ),
      ),
    );
  }
}
