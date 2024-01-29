import 'package:billing/componenets/app_button.dart';
import 'package:billing/componenets/app_textfield.dart';
import 'package:billing/constants/ui/image_constants.dart';
import 'package:flutter/material.dart';

import '../../billing/screen/billing_home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
              flex: 4,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                      image: AssetImage(
                        AppImages.itemPaceholder,
                      ),
                      fit: BoxFit.cover),
                ),
              )),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Login",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    child: Column(
                      children: [
                        AppTextField(controller: _emailController, labelText: "Email"),
                        AppTextField(
                          controller: _passwordController,
                          labelText: "Password",
                          obscureText: true,
                        ),
                        GestureDetector(
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("Forgot Password?"),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
                const SizedBox(
                  height: 16,
                ),
                Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    child: AppButton(
                        child: Text("Login"),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BillingHomeScreen(),
                            ),
                          );
                        }))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
