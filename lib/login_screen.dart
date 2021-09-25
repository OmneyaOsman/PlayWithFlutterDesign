import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        // width: double.infinity,
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Login',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      onFieldSubmitted: (value) {
                        print('on Field Submitted $value');
                      },
                      onChanged: (value) {
                        print('onChanged $value');
                      },
                      decoration: InputDecoration(
                          labelText: 'Email',
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      onFieldSubmitted: (value) {
                        print('on Field Submitted $value');
                      },
                      onChanged: (value) {
                        print('onChanged $value');
                      },
                      decoration: InputDecoration(
                          labelText: 'Password',
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.remove_red_eye),
                          border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      width: double.infinity,
                      child: MaterialButton(
                        onPressed: () {
                          print(
                              "on Login pressed ${emailController.text} ${passwordController.text}");
                        },
                        color: Colors.blue,
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
