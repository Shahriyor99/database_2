import 'package:awesome_icons/awesome_icons.dart';
import 'package:database_2/pages/sign_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import '../model/user_model.dart';
import '../servis/hive_servis.dart';

class HomePage extends StatefulWidget {
  static final String id="HomePage";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var emailController=TextEditingController();
  var passwordController=TextEditingController();

  void _doLogIn(){
    String email=emailController.text.toString().trim();
    String password=passwordController.text.toString().trim();

    User user_1= User.from(email: email, password: password);

    HiveDB().storeUser(user_1);

    var user_2=HiveDB().loadUser();

    print(user_2.email);
    print(user_2.password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color(0xFF00796B),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                    padding: EdgeInsets.only(top: 50,left: 30,right: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //#image
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                  image: AssetImage("assets/images/ic_portrait.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            SizedBox(height: 20,),

                            //#text
                            Text("Welcome", style: TextStyle(color: Color(0xFF004D40)),),

                            SizedBox(height: 7,),

                            Text("Sign In", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 25),)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: SingleChildScrollView(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(50), topLeft: Radius.circular(50)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10,),

                        //#email
                        Text("Email", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),

                        SizedBox(height: 3,),

                        TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                            hintText: "Enter Email",
                            hintStyle: TextStyle(color: Colors.grey[200] ,fontSize: 13),
                            border: InputBorder.none,
                          ),
                        ),

                        Container(
                          color: Colors.grey[200],
                          height: 1,
                        ),


                        SizedBox(height: 30,),

                        //#password
                        Text("Password", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),

                        SizedBox(height: 3,),

                        TextField(
                          controller: passwordController,
                          decoration: InputDecoration(
                            hintText: "Enter Password",
                            hintStyle: TextStyle(color: Colors.grey[200] ,fontSize: 13),
                            border: InputBorder.none,
                          ),
                        ),

                        Container(
                          color: Colors.grey[200],
                          height: 1,
                        ),

                        SizedBox(height: 20,),

                        //#forget
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: (){
                                print("Dasturda muammo yuq!");
                              },
                              child: Text("Forget Password?", style: TextStyle(color: Colors.grey[300]),),
                            ),
                          ],
                        ),

                        SizedBox(height: 20,),

                        //#sign in
                        FlatButton(
                          onPressed: (){
                            _doLogIn();
                          },
                          child: Container(
                            width: double.infinity,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xFF00796B),
                            ),
                            child: Center(
                              child: Text("Sign In", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
                            ),
                          ),
                        ),

                        SizedBox(height: 30,),

                        //#or
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 20,
                                child: Center(
                                  child: Container(
                                    height: 2,
                                    color: Colors.grey[300],
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(width: 12,),

                            Container(
                              height: 20,
                              child: Center(
                                child: Text("OR", style: TextStyle(color: Colors.grey, fontSize: 17),),
                              ),
                            ),

                            SizedBox(width: 12,),

                            Expanded(
                              child: Container(
                                height: 20,
                                child: Center(
                                  child: Container(
                                    height: 2,
                                    color: Colors.grey[300],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 20,),

                        //#icon buttons
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              onPressed: (){
                                print("Dasturda muammo yuq!");
                              },
                              icon: Icon(FontAwesomeIcons.facebookF, color: Colors.indigo[900],),
                            ),

                            SizedBox(width: 10,),

                            IconButton(
                              onPressed: (){
                                print("Dasturda muammo yuq!");
                              },
                              icon: Icon(FontAwesomeIcons.twitter, color: Colors.blue,),
                            ),

                            SizedBox(width: 30,),

                            IconButton(
                              onPressed: (){
                                print("Dasturda muammo yuq!");
                              },
                              icon: Icon(FontAwesomeIcons.instagramSquare, color: Colors.black,),
                            )
                          ],
                        ),

                        SizedBox(height: MediaQuery.of(context).size.height/8,),

                        //#sign up
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Don't have an account ?", style: TextStyle(color: Colors.grey[300]),),
                            SizedBox(width: 10,),
                            GestureDetector(
                              onTap: (){
                                Navigator.pushReplacementNamed(context, SignPage.id);
                              },
                              child: Text("SignUp", style: TextStyle(color: Color(0xFF00838F), fontWeight: FontWeight.bold),),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}
