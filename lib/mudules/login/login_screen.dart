import 'package:flutter/material.dart';
import 'package:oneui/shared/componends/componends.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  var emailController = TextEditingController();
  var passwrodConraller = TextEditingController();
  var TextFormKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // appBarr ==> leading .. Title .. Action
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            print('Menu Clicked');
          },
        ),
        backgroundColor: Colors.teal,
        title: const Text('Home Screen'),
        actions: [
          IconButton(
              onPressed: () {
                print('Search Clicked ');
              },
              icon: const Icon(Icons.search)),
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              print('Notification Clicked');
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(19.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: TextFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'LOGIN',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 19.0,
                  ),
                  defaultTextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    labelText: 'Email Address',
                    prefixIcon: Icons.email,
                    onChanged: (value) {
                      print(value);
                    },
                    onSubmitted: (value) {
                      print(value);
                    },
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  defaultTextFormField(
                    controller: passwrodConraller,
                    keyboardType: TextInputType.visiblePassword,
                    labelText: 'Password',
                    prefixIcon: Icons.lock,
                    suffixIcon: Icons.remove_red_eye,
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  defaultButton(
                      color: Colors.teal,
                      text: 'LOGIN',
                      function: () {
                        print(emailController.text);
                        print(passwrodConraller.text);
                      }),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t Have Account?',
                        style: TextStyle(fontSize: 20.0, color: Colors.black),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Rigester Now',
                            style:
                                TextStyle(color: Colors.teal, fontSize: 20.0),
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
