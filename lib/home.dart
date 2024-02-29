import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String Data = "This data has a value of";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('learn Dialog'),
      ),
      body: Center(
        child: Text(Data,
        style: TextStyle(
          fontSize: 20,
        ),
        ),
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text('CONFIRM'),
                  content: Text('Are you sure this data has a value?'),
                  actions: [
                    TextButton(onPressed: () {
                      setState(() {
                        Data = "True";
                      });
                      Navigator.of(context).pop(true);
                    },
                    child: Text('Yes')
                    ),
                    TextButton(onPressed: () {
                      setState(() {
                        Data = "False";
                      });
                      Navigator.of(context).pop(false);
                    },
                    child: Text('No')
                    ),
                  ],
                );
              }  
            ).then((value) {
              return print(value);
            });    
          },
          child: Icon(Icons.add_task),
        ),
    );
  }
}