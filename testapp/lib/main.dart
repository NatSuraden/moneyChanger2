import 'package:flutter/material.dart';
import 'welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Form(),
    );
  }
}

class Form extends StatefulWidget {
  const Form({Key? key}) : super(key: key);

  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<Form> {
  TextEditingController _TH = TextEditingController();
  TextEditingController _TYPE = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Money changer'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _TH,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'จำนวนเงินบาท'),
                 keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _TYPE,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '1=USD / 2=เยน'),
                keyboardType: TextInputType.number,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => WelcomePage(
                      TH: _TH.text,
                      TYPE: _TYPE.text,
                      money: _validateUserInput(_TYPE.text),
                    ),
                  ),
                );
              },
              child: Text('Go Next Page'),
            )
          ],
        ),
      ),
    );
  }
   _validateUserInput(String input) {
     String money2;
     if(input == "1"){
       money2 = 'USD';
     }
     else if (input == "2"){
       money2 = 'เยน';
     }
     else{
       money2 = 'USD';
     }
     return money2;
   }
}