import 'package:flutter/material.dart';
import 'package:flutter_catelog/utils/routes.dart';

class LoginPage extends StatelessWidget {
  //const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/login_image.png",fit: BoxFit.fitWidth,),
              SizedBox(height: 20.0,),
              Text("Welcome",style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
              SizedBox(height: 20.0,),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 30),
                child: Column(children: [
                  TextFormField(decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username"
                  ),),
                  SizedBox(height: 20.0,),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password"
                  ),),
                  SizedBox(height: 20.0,),

                  ElevatedButton(
                    onPressed:(){
                      Navigator.pushNamed(context, MyRoutes.homeRoutes);
                      //print("Login Print");
                      } ,
                    child: Text("Login"),
                    style: TextButton.styleFrom(
                        minimumSize: Size(200, 45),
                        backgroundColor: Colors.deepPurple,
                        foregroundColor: Colors.white,
                    ),
                  ),
                ],
                ),
              ),

            ],
          )
        )
      )
    );
  }
}
