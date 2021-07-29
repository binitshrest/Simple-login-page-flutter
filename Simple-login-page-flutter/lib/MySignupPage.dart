import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MySignupPage(),
    );
  }
}
class MySignupPage extends StatefulWidget {
  const MySignupPage({Key? key}) : super(key: key);

  @override
  _MySignupPageState createState() => _MySignupPageState();
}

class _MySignupPageState extends State<MySignupPage> {
  late String firstname,lastname,email,password,country;
  Widget _buildCountryRow(){
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.name,
        onChanged: (value){
          setState(() {
            country = value;
          });
        },
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.add_location_alt,
              color: Colors.deepOrange,
            ),
            labelText: 'Country/Region',
            focusedBorder:OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.deepOrangeAccent, width: 1.0),
            borderRadius: BorderRadius.circular(25.0),
          ),
          // focusedBorder: UnderlineInputBorder(
          //   borderSide: BorderSide(
          //     color: Colors.deepOrangeAccent,
          //   ),
          // ),
        ),
      ),
    );
  }
  Widget _buildConfirmPasswordRow(){
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.text,
        obscureText: true,
        onChanged: (value){
          setState(() {
            password = value;
          });
        },
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.lock,
            color: Colors.deepOrange,
          ),
          labelText: 'Confirm Password',
            focusedBorder:OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.deepOrangeAccent, width: 1.0),
            borderRadius: BorderRadius.circular(25.0),
          ),
          // focusedBorder: UnderlineInputBorder(
          //   borderSide: BorderSide(
          //     color: Colors.deepOrangeAccent,
          //   ),
          // ),
        ),
      ),);
  }
  Widget _buildSignupButton(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            height: 1.4 * (MediaQuery.of(context).size.height/25),
            width: 5* (MediaQuery.of(context).size.width/15),
            margin: EdgeInsets.only(top:10,bottom:20),
            child:RaisedButton(
              elevation: 5.0,
              color:Colors.deepOrangeAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              onPressed: () {  },
              child:Text(
                "Sign Up",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 1.5,
                  fontSize: MediaQuery.of(context).size.height/50,
                ),
              ),
            )
        )
      ],
    );
  }
  Widget _buildPasswordRow(){
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.text,
        obscureText: true,
        onChanged: (value){
          setState(() {
            password = value;
          });
        },
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.lock,
            color: Colors.deepOrange,
          ),
          labelText: 'Password',
            focusedBorder:OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.deepOrangeAccent, width: 1.0),
            borderRadius: BorderRadius.circular(25.0),
          ),
          // focusedBorder: UnderlineInputBorder(
          //   borderSide: BorderSide(
          //     color: Colors.deepOrangeAccent,
          //   ),
          // ),
        ),
      ),);
  }
  Widget _buildEmailRow(){
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        onChanged: (value){
          setState(() {
            email = value;
          });
        },
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.email,
              color: Colors.deepOrange,
            ),
            labelText: 'E-mail',
            focusedBorder:OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.deepOrangeAccent, width: 1.0),
            borderRadius: BorderRadius.circular(25.0),
          ),
          // focusedBorder: UnderlineInputBorder(
          //   borderSide: BorderSide(
          //     color: Colors.deepOrangeAccent,
          //   ),
          // ),
        ),
      ),
    );
  }
  Widget _buildFirstNameRow(){
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.name,
        onChanged: (value){
          setState(() {
            firstname = value;
          });
        },
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.account_circle_sharp,
              color: Colors.deepOrange,
            ),
            labelText: 'First Name',
            focusedBorder:OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.deepOrangeAccent, width: 1.0),
            borderRadius: BorderRadius.circular(25.0),
          ),
          // focusedBorder: UnderlineInputBorder(
          //   borderSide: BorderSide(
          //     color: Colors.deepOrangeAccent,
          //   ),
          // ),
        ),
      ),
    );
  }
  Widget _buildSecondNameRow(){
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.name,
        onChanged: (value){
          setState(() {
            lastname = value;
          });
        },
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.account_circle_sharp,
              color: Colors.deepOrange,
            ),
            labelText: 'Last Name/Sur Name',
          focusedBorder:OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.deepOrangeAccent, width: 1.0),
            borderRadius: BorderRadius.circular(25.0),
          ),
          // focusedBorder: UnderlineInputBorder(
          //   borderSide: BorderSide(
          //     color: Colors.deepOrangeAccent,
          //   ),
          // ),

        ),
      ),
    );
  }
  Widget _buildContainer(){
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0,0, 0, 0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),

              child: Container(

                  height: MediaQuery.of(context).size.height*0.6,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Text(
                          //     "Login Portal",
                          //     style: TextStyle(
                          //     fontSize: MediaQuery.of(context).size.height/30,
                          //     ),
                          //  )
                        ],
                      ),
                      _buildFirstNameRow(),
                      _buildSecondNameRow(),
                      _buildEmailRow(),
                      _buildPasswordRow(),
                      _buildConfirmPasswordRow(),
                      _buildCountryRow(),
                      _buildSignupButton(),

                      // _buildOrRow(),
                      // _buildSocialBtnRow(),
                      // _buildSignUpBtn(),
                    ],
                  )
              ),
            ),
          ),
        ]

    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,//Resize the Overflow content
        appBar: AppBar(
          title: Text('Binit Shrestha Sign Up Portal',
          ),
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
        ),
        body:
          Stack(
            children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 50, 20),
                  child: Text('Welcome, Buddy!!',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height/30,
                    fontWeight: FontWeight.bold,
                  color: Colors.deepOrangeAccent),

                ),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(40, 60, 30, 20),
                child: Text('Please! Follow the procedure to complete the process',
                style:TextStyle(
                    fontSize: MediaQuery.of(context).size.height/70,

                  )
                )
              ),

              Container(
                margin: EdgeInsets.only(top: 80),
                height:MediaQuery.of(context).size.height * 0.7,
                width:MediaQuery.of(context).size.width,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(100),
                      topRight: const Radius.circular(100),
                      bottomLeft: const Radius.circular(100),
                      bottomRight: const Radius.circular(100)
                    ),
                    color: Colors.deepOrange,
                  ),
                ),

              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildContainer(),
                ],
              )
            ],
          )
      ),
    );
  }
}

