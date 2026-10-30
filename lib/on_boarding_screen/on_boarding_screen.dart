import 'package:flutter/material.dart';

class Login2 extends StatelessWidget {
  const Login2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 200),
          Icon(Icons.lock_person_rounded, size: 80, color: Colors.blueAccent),
          SizedBox(height: 20),
          Text(
            'Welcome',
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.w800,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 44),
          TextField(
            decoration: InputDecoration(
              hintText: ' Email',
              contentPadding: const EdgeInsets.only(left: 10.0),
              hintStyle: TextStyle(fontSize: 24),
            ),
          ),
          SizedBox(height: 25),
          TextField(
            decoration: InputDecoration(
              hintText: ' Password',
              contentPadding: const EdgeInsets.only(left: 10.0),
              hintStyle: TextStyle(fontSize: 24),
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Forget Password?',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.black38,
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            child: Text(
              'LOGIN',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white70,
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
