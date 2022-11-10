import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerpractice/providers/auth_provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                hintText: "Email",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(
                hintText: "Password",
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Consumer<AuthProvider>(builder: (context, value, child) {
              return GestureDetector(
                onTap: () {
                  value.loginPost(_emailController.text.toString(),
                      _passwordController.text.toString());
                },
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Center(
                    child: value.loading
                        ? CircularProgressIndicator(
                            color: Colors.white,
                          )
                        : Text(
                            "Login",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                  ),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
