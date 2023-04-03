import 'package:flutter/material.dart';
import 'package:test/SIgnup.dart';

void main() {
  runApp(MaterialApp(
  home: TestApp(),
  ));
}

class TestApp extends StatefulWidget {
  const TestApp({Key? key}) : super(key: key);

  @override
  State<TestApp> createState() => _TestAppState();
}

class _TestAppState extends State<TestApp> {
  final  _emailcontroller = TextEditingController();
  final  _passcontroller = TextEditingController();
 // final  _emailcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test App"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white30,
        alignment: Alignment.center,
        child: Container(
          margin: EdgeInsets.only(top: 150),
          child: Column(
            children: [
                Center(
                  child: Container(
                    child: Text("Hello User",
                    style: TextStyle(fontSize: 24,color: Colors.indigo),),
                  ),
                ),
                 Center(
                   child: Container(
                    width: 250,
                    child: TextFormField(
                      decoration: InputDecoration(labelText: "Enter Email"),
                      controller: _emailcontroller,
                    ),
                ),
                 ),
              Center(
                child: Container(
                  width: 250,
                  child: TextFormField(
                    decoration: InputDecoration(labelText: "Enter Password"),
                    controller: _passcontroller,
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 25),
                  width: 250,
                  child: ElevatedButton(
                    onPressed: (){
                      if(_emailcontroller.text=="Htoo" && _passcontroller.text=="123"){
                        print("Correct");
                      }else print("Wrong");
                    },
                    child: Text("Login")  ,
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.all(10),
                  width: 250,
                  child: Row(
                    children: [
                      Expanded(
                          child: Text("For News Users"),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Signup()),
                          );
                        },
                        child: Text("Sign Up",
                          style: TextStyle(color: Colors.indigo),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      );
  }
}