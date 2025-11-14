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
  bool _hide = false;
  var _textmsg = "Ha bhai hacker!";
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
              obscureText: _hide,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(_hide ? Icons.visibility_off_outlined : Icons.visibility),
                  onPressed: () {
                    setState(() {
                      _hide = !_hide; // toggle
                    });
                  },
                ),
              ),
              keyboardType: TextInputType.text,
            ),

            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  String email = _emailController.text.trim();
                  String password = _passwordController.text.trim();

                  if ((email.isNotEmpty && email == "k@gmail.com") &&
                      (password.isNotEmpty && password == "123")) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BottomMenu()),
                    );
                  } else {
                    message = '${_textmsg} 😏';
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
