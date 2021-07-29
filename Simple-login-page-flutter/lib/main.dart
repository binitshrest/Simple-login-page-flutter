import 'package:flutter/material.dart';
import 'MySignupPage.dart';

void main() {
  runApp(MaterialApp(
    home: CircularLoginPageDemo(),
  ));
}

class CircularLoginPageDemo extends StatelessWidget {
  const CircularLoginPageDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:MyFormPage(),
      routes: <String, WidgetBuilder>{
        '/signup': (BuildContext context) => new SignupPage(),
      },
    );
  }
}

class MyFormPage extends StatefulWidget {
  const MyFormPage({Key? key}) : super(key: key);

  @override
  _MyFormPageState createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
  late String email, password;
  Widget _buildSignUpBtn(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(top:2),
          child: FlatButton(
            onPressed: (){
              Navigator.of(context).pushNamed('/signup');
            },
            child: RichText(
              text: TextSpan(
                  children:[
                    TextSpan(
                      text: 'Dont have an account?',
                      style:TextStyle(
                        color: Colors.black,
                        fontSize: MediaQuery.of(context).size.height/70,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                        text: 'Sign Up',
                        style: TextStyle(
                          color:Colors.black,
                          fontSize: MediaQuery.of(context).size.height/70,
                          fontWeight: FontWeight.bold,
                        ))
                  ] ),
            ),

          ),
        )
      ],
    );
  }
  Widget _buildSocialBtnRow(){
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: (){},
            child: Container(
              height:60,
              width:60,
              decoration: BoxDecoration(
                shape:BoxShape.circle,
                color: Colors.deepOrangeAccent,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0,2),
                      blurRadius: 6.0
                  )
                ],
              ),
              child: Icon(
                Icons.facebook,
                color: Colors.white,
              ),
            ),
          ),
        ]
    );
  }
  Widget _buildOrRow(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom:20),
          child: Text(
            '-OR-',
            style: TextStyle(
                fontWeight: FontWeight.w400
            ),
          ),
        )
      ],
    );
  }
  Widget _buildForgetPasswordButton(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FlatButton(
          onPressed: (){},
          child: Text('Forgot Password?',
            style: TextStyle(
              decoration: TextDecoration.underline,

            ),),
        ),
      ],
    );
  }
  Widget _buildLoginButton(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            height: 1.4 * (MediaQuery.of(context).size.height/20),
            width: 5* (MediaQuery.of(context).size.width/10),
            margin: EdgeInsets.only(top:10,bottom:20),
            child:RaisedButton(
              elevation: 5.0,
              color:Colors.deepOrangeAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              onPressed: () {  },
              child:Text(
                "Login",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 1.5,
                  fontSize: MediaQuery.of(context).size.height/40,
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
        ),
      ),
    );
  }
  Widget _buildContainer(){
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0,130, 0, 0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),

              child: Container(

                  height: MediaQuery.of(context).size.height*0.5,
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
                      _buildEmailRow(),
                      _buildPasswordRow(),
                      _buildForgetPasswordButton(),
                      _buildLoginButton(),
                      _buildOrRow(),
                      _buildSocialBtnRow(),
                      _buildSignUpBtn(),
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
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.grey[300],
          appBar: AppBar(
            title: Text('Binit Shrestha Login Portal',
            ),
            centerTitle: true,
            backgroundColor: Colors.deepOrange,
          ),
          body:
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(80, 40, 50, 20),
                child: Text(
                  "",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height/37,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 80, 0, 0),
                height:MediaQuery.of(context).size.height * 0.6,
                width:MediaQuery.of(context).size.width,
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.only(
                        topLeft: const Radius.circular(100),
                        topRight: const Radius.circular(100),
                          bottomLeft: const Radius.circular(100),
                          bottomRight: const Radius.circular(100),
                      ),
                      color: Colors.deepOrange,
                    )
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // _buildLogo(),
                  _buildContainer(),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 140, 0, 0),
                    height:MediaQuery.of(context).size.height * 0.1,
                    width:MediaQuery.of(context).size.width,
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius:BorderRadius.only(
                            topLeft: const Radius.circular(100),
                            topRight: const Radius.circular(100),
                          ),
                          color: Colors.deepOrange,
                        )

                    ),
                  ),
                ],
              )
            ],
          )

      ),
    );
  }
}

