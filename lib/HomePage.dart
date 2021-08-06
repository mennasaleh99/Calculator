import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _textController = TextEditingController();
  var n1, n2, op, result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: _textController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  labelText: "Enter Value",
                  border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    n1 = double.parse(_textController.text);
                    _textController.clear();
                    op = '+';
                  },
                  style: ElevatedButton.styleFrom(shape: CircleBorder()),
                  child: Text(
                    "+",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    n1 = double.parse(_textController.text);
                    _textController.clear();
                    op = '-';
                  },
                  style: ElevatedButton.styleFrom(shape: CircleBorder()),
                  child: Text(
                    "-",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    n1 = double.parse(_textController.text);
                    _textController.clear();
                    op = '*';
                  },
                  style: ElevatedButton.styleFrom(shape: CircleBorder()),
                  child: Text(
                    "*",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    n1 = double.parse(_textController.text);

                    _textController.clear();
                    op = '/';
                  },
                  style: ElevatedButton.styleFrom(shape: CircleBorder()),
                  child: Text(
                    "/",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    n2 = double.parse(_textController.text);

                    _textController.clear();
                    switch (op) {
                      case "+":
                        result = n1 + n2;
                        break;
                      case "-":
                        result = n1 - n2;
                        break;
                      case "*":
                        result = n1 * n2;
                        break;
                      case "/":
                        if (n2 != 0) {
                          result = n1 / n2;
                        } else {
                          result = null;
                        }
                        break;
                    }
                    if (result != null) {
                      _textController.text = result.toString();
                    } else {
                      _textController.text = "Can not devide By Zero";
                    }
                  },
                  style: ElevatedButton.styleFrom(shape: CircleBorder()),
                  child: Text(
                    "=",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
