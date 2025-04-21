import 'package:flutter/material.dart';
import '../controllers/login_controller.dart';

class LoginView extends StatefulWidget {
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final LoginController controller = LoginController();

  @override
  void initState() {
    super.initState();
    isLoggedIn();
  }

  void isLoggedIn() {
    var tempContext = Navigator.of(context);
    controller.checkSession().then((isLoggedIn) {
      if (isLoggedIn) {
        tempContext.pushReplacementNamed('/home');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Access Account',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('Please log in to continue'),
            SizedBox(height: 32),
            TextField(
              controller: controller.usernameController,
              decoration: InputDecoration(
                labelText: 'Your username',
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: controller.passwordController,
              decoration: InputDecoration(
                labelText: 'Enter your password',
                prefixIcon: Icon(Icons.lock),
              ),
              obscureText: true,
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () async {
                var tempContext = Navigator.of(context);
                if (controller.validate()) {
                  await controller.saveSession(
                    controller.usernameController.text,
                  );

                  tempContext.pushReplacementNamed('/home');
                }
              },
              child: Text('Log In'),
            ),
          ],
        ),
      ),
    );
  }
}
