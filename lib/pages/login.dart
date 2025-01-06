import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Login',
              style: TextStyle(
                fontSize: 24, 
              fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 32),

            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 16),

            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),

            SizedBox(height: 24),

            ElevatedButton(
              
              onPressed: () {
                // Handle login logic
                Navigator.pushNamed(context, '/homepage');
              },
              child: Text(
                'Login'
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 3.0,
                ),
                
            ),

          ],
        ),
      ),
    );
  }
}
