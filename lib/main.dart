import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marwan ali',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _textEditingController = TextEditingController();
  int _sum = 0;

  void _addToSum() {
    setState(() {
      _sum += int.parse(_textEditingController.text);
    });
  }

  void _clearSum() {
    setState(() {
      _sum = 0;
      _textEditingController.clear();
    });
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz gruop 5 '),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _textEditingController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'أدخل رقمًا',
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _addToSum,
              child: Text('جمع'),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: _clearSum,
              child: Text('تنظيف'),
            ),
            SizedBox(height: 16),
            Text(
              'المجموع: $_sum',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
