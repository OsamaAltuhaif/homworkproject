import 'package:flutter/material.dart';
import 'package:homworkproject/Widgets/CustomButton.dart';

class SignIn extends StatelessWidget {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passWordController = TextEditingController();

   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 70, vertical: 100),
                alignment: Alignment.center,
                child: Column(children: [
          Container(
            child: Icon(Icons.person),
          ),
          Form(
              child: Column(
            children: [
              TextFormField(
                controller: userNameController,
                decoration: InputDecoration(
                  label: Text("UserName"),
                ),
              ),
              TextFormField(
                controller: passWordController,
                decoration: InputDecoration(
                  label: Text("Password"),
                ),
              ),
              TuhaifButton(
                backgroundColor: Colors.lightBlue,
                border: 10,
                child: Text("Log In"),
                margin: 20,
                padding: 20,
                redus: 30,
                onTab: () {},
              )
            ],
          ))
                ]),
              ),
        ));
  }
}
