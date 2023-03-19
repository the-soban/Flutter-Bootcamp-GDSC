import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome to Flutter",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
              Text("Login to Continue:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
              TextFormField(),
              TextFormField(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Dont Have an account?",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  Text(" Register Now",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue,
                      )),
                ],
              ),
              ElevatedButton(onPressed: () {}, child: Text("Login")),
              SizedBox(width: 16,),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey, // Background color
                  ),
                  child: Text("Go Back"))
            ],
          ),
        ),
      ),
    );
  }
}
