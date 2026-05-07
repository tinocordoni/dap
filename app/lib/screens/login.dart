import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String appTitle = "CruzAR";

  String loginUsername = "Tino";
  String loginPassword = "Helado";

  String username = "";
  String password = "";

  bool obscurePassword = true;

  String informar = "Ingrese su usuario y contraseña";

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Builder(
          builder: (context) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  appTitle,
                  style: TextStyle(fontSize: 50, color: Colors.blueGrey),
                ),
                SizedBox(height: 100),
                SizedBox( width: 500, child: TextField(controller: usernameController)),
                SizedBox(height: 20),
                SizedBox(width: 500,
                  child: TextField(
                    controller: passwordController,
                    obscureText: obscurePassword,
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    username = usernameController.text;
                    password = passwordController.text;
                    if (username.isEmpty || password.isEmpty) {
                      informar = "Llene ambos campos";
                    } else if (username == loginUsername &&
                        password == loginPassword) {
                      informar = "Puede ingresar";
                      context.go("/home");
                    } else {
                      informar = "Las credenciales no son correctas";
                    }
                    passwordController.clear();
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text(informar)));
                    setState(() {});
                  },
                  child: Text("Ingresar"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
