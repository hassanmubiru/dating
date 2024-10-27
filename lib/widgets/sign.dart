import 'package:flutter/material.dart';
import 'package:juicedates/forget_password.dart';
import 'package:juicedates/widgets/signup.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.bottomRight,
            colors: [
              Colors.grey,
              Colors.grey.withOpacity(0.8),
            ],
            
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15,right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width / 1.7,
                    bottom: MediaQuery.of(context).size.height /5,
                  ),
                  child: const Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                 TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                    ),
                    prefixIcon: const Icon(Icons.mail),
                    contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                    enabledBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(10)
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    hintText: 'Password',
                    hintStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                    ),
                    prefixIcon: const Icon(Icons.vpn_key),
                    contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15)
                  ),
                ),
                const SizedBox(height: 55,),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const SignIn(),
                      ),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 55,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[600] ?? Colors.grey,
                          blurRadius: 2,
                          spreadRadius: 0.5,
                        )
                      ],
                      gradient: LinearGradient(
                        colors: [
                          Colors.purple[600] ?? Colors.purple,
                          Colors.purple[400] ?? Colors.purple,
                          Colors.orangeAccent[700] ?? Colors.orangeAccent
                        ]
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        'SignIn',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.2,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25,),
                GestureDetector(
                  onTap: () {
                    print('push');
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const ForgetPassword(),
                      ),
                    );
                  },
                 child: const Text(
                  'Forget Password?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                 ),
                ),
                ),
                const SizedBox(height: 25,),
                GestureDetector(
                  onTap: () {
                    print('push');
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const SignUp(),
                      ),
                    );
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                      letterSpacing: 1.2,
                    ),
                  ),

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}