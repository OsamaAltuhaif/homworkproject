import 'package:flutter/material.dart';
import 'package:homworkproject/Widgets/CustomButton.dart';

class SignIn extends StatelessWidget {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passWordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.lightBlue,
      body: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * 9.0,
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black,
                    offset: Offset(1, 0),
                    spreadRadius: 1,
                    blurRadius: 10,
                    blurStyle: BlurStyle.outer),
              ],
              borderRadius: BorderRadius.circular(20)),
          height: MediaQuery.of(context).size.height * 0.8,
          width: MediaQuery.of(context).size.width * 0.88,
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                    backgroundColor: Colors.lightBlue[200],
                    child: Icon(Icons.person, size: 60),
                    maxRadius: 50),
                TextFormField(
                  controller: userNameController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    label: Text("Email"),

                  ),
                ),
                TextFormField(
                  controller: passWordController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    label: Text("Password"),
                  ),
                ),
                TuhaifButton(
                  border: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Sign In",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                      Icon(
                        Icons.login,
                        size: 30,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                  redus: 100,
                  margin: 0,
                  padding: 0,
                  onTab: () {},
                  backgroundColor: Colors.lightBlue,
                ),
                SizedBox(
                    //  height: 50,
                    )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
