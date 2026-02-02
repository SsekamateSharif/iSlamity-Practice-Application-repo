import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                Spacer(),
                Text(
                  "Hello Welcome Back",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 18),
                Text(
                  "Log in to continue",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                TextField(
                  decoration: InputDecoration(
                    hintText: "User Email adress",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                  ),
                ),
                SizedBox(height: 15),
                TextButton(
                  onPressed: () {
                    print("Forgot clicked");
                  },
                  style: TextButton.styleFrom(foregroundColor: Colors.white),
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(height: 25),
                SizedBox(
                  height: 48,
                  width: 130,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/main_page');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow,
                      foregroundColor: Colors.black,
                    ),
                    child: Text("Log in"),
                  ),
                ),
                Spacer(),

                Text("Or continue with", style: TextStyle(fontSize: 15)),
                SizedBox(height: 16),
                SizedBox(
                  width: 300,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Google clicked");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                    ),
                    child: Text(
                      "Continue with Google",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
                SizedBox(height: 24),
                SizedBox(
                  width: 350,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Phone number clicked");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                    ),
                    child: Text(
                      "Continue with Phone number",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),

                SizedBox(height: 16),

                Text("Don't have an account yet?"),
                SizedBox(height: 16),
                SizedBox(
                  height: 48,

                  width: 130,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Sign up clicked");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow,
                      foregroundColor: Colors.black,
                    ),
                    child: Text("Sign Up"),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
