import 'package:flutter/material.dart';
import 'package:myapp/pracfol/bottom.dart';

class LogInForm extends StatefulWidget {
  const LogInForm({super.key});

  @override
  State<LogInForm> createState() => _LogInFormState();
}

class _LogInFormState extends State<LogInForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String message = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Login Form"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 18),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  String email = _emailController.text.trim();
                  String password = _passwordController.text.trim();

                  if ((email.isNotEmpty && email == "k@gmail.com") && (password.isNotEmpty&& password == "123")) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BottomMenu()),
                    );
                  } else {
                    message = "Wrong Email or Password";
                  }
                });
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => BottomMenu()),
                // );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(vertical: 12),
              ),
              child: const Text("Login", style: TextStyle(fontSize: 18)),
            ),
            const SizedBox(height: 20),
            Center(child: Text(message, style: const TextStyle(fontSize: 16))),
          ],
        ),
      ),
    );
  }
}
