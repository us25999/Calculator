import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calc App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.teal),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController fno = TextEditingController();
  TextEditingController sno = TextEditingController();
  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();
  var ans = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(child: Text("US CALC")), shadowColor: Colors.orange),
      body: Container(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(30)),
                  child: TextField(
                    focusNode: focusNode1,
                    controller: fno,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter first no.",
                    ),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(30)),
                child: TextField(
                  focusNode: focusNode2,
                  controller: sno,
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: "Enter second no."),
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    onPressed: () {
                      focusNode1.unfocus();
                      focusNode2.unfocus();
                      // focusNode1.canRequestFocus=false;
                      ans = (int.parse(fno.text) + int.parse(sno.text))
                          .toString();
                      setState(() {});
                    },
                    child: Text("SUM"),
                    color: Colors.teal,
                    height: 50,
                    minWidth: 75,
                  ),
                  MaterialButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    onPressed: () {
                      focusNode1.unfocus();
                      focusNode2.unfocus();
                      // focusNode1.canRequestFocus=false;
                      ans = (int.parse(fno.text) - int.parse(sno.text))
                          .toString();
                      setState(() {});
                    },
                    child: Text("DIFF"),
                    color: Colors.teal,
                    height: 50,
                    minWidth: 75,
                  ),
                  MaterialButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    onPressed: () {
                      focusNode1.unfocus();
                      focusNode2.unfocus();
                      // focusNode1.canRequestFocus=false;
                      ans = (int.parse(fno.text) * int.parse(sno.text))
                          .toString();
                      setState(() {});
                    },
                    child: Text("MUL"),
                    color: Colors.teal,
                    height: 50,
                    minWidth: 75,
                  ),
                  MaterialButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    onPressed: () {
                      focusNode1.unfocus();
                      focusNode2.unfocus();
                      // focusNode1.canRequestFocus=false;
                      ans = (int.parse(fno.text) / int.parse(sno.text))
                          .toStringAsFixed(2);
                      setState(() {});
                    },
                    child: Text("DIV"),
                    color: Colors.teal,
                    height: 50,
                    minWidth: 75,
                  ),
                  MaterialButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    onPressed: () {
                      focusNode1.unfocus();
                      focusNode2.unfocus();
                      // focusNode1.canRequestFocus=false;
                      ans = (int.parse(fno.text) % int.parse(sno.text))
                          .toString();
                      setState(() {});
                    },
                    child: Text("REM"),
                    color: Colors.teal,
                    height: 50,
                    minWidth: 75,
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                ans,
                style: TextStyle(fontSize: 72),
              ),
              SizedBox(
                height: 50
              ),
              MaterialButton(
                    onPressed: () {
                      focusNode1.unfocus();
                      focusNode2.unfocus();
                      // focusNode1.canRequestFocus=false;
                      fno.text="";
                      sno.text="";
                      ans = "";
                      setState(() {});
                    },
                    child: Text("Clear"),
                    color: Colors.teal,
                    height: 50,
                    minWidth: 75,
                  ),
              
            ],
          ),
        ),
      ),
    );
  }
}
