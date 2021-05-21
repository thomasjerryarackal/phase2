import 'package:flutter/material.dart';
import 'package:login/pages/regi_page.dart';
import 'package:login/pages/welcome.dart';
import 'package:login/widgets/btn_widget.dart';
import 'package:login/widgets/herder_container.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
            padding: EdgeInsets.only(bottom: 30),
            child: Column(
      children: <Widget>[
        HeaderContainer("Login"),
        Expanded(
          flex: 1,
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 30),
            child: Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        _textInput(hint: "Email", icon: Icons.email),
        TextFormField(
          decoration: const InputDecoration(
              labelText: 'Password',
              icon: const Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: const Icon(Icons.lock),
              )),
          validator: (val) =>
              val.length < 6 ? 'Password too short.' : null,
          obscureText: true,
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          alignment: Alignment.centerRight,
          child: Text(
            "Forgot Password?",
          ),
        ),
            Expanded(
              child: Center(
               child: ButtonWidget(
              onClick: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Welcome()));
              },
              btnText: "LOGIN",
            ),
          ),
        ),
        SizedBox(height:30),
        Container(
          margin: EdgeInsets.only(bottom:50),
          alignment: Alignment.centerRight,
          child: Row(
            children: [
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "Don't have an account ? ",
                      style: TextStyle(
                          color: Colors.black, fontSize: 15)),
                ]),
              ),

              OutlineButton(
                child: Text(
                  "REGISTER",
                  style: TextStyle(fontSize: 15.0),
                ),
                highlightedBorderColor: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegPage()));
                },
              ),
            ],
          ),
        ),
      ],
            ),
          ),
        )
      ],
            ),
          ),
    );
  }

  Widget _textInput({controller, hint, icon}) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
      ),
      padding: EdgeInsets.only(left: 10),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          prefixIcon: Icon(icon),
        ),
      ),
    );
  }
}
