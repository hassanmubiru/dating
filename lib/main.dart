import 'package:flutter/material.dart';
import 'package:juicedates/widgets/sign.dart';
import 'package:juicedates/widgets/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'JuiceDates', 
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:  const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
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
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(
                  top: MediaQuery.of(context).size.width / 2.4,
                  bottom: MediaQuery.of(context).size.width / 2.1,
                ),
                child: const Text(
                  'JuiceDates',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 2,
                  ),
                ),
              ),
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
                    gradient:LinearGradient(
                      colors: [
                        Colors.purple[600] ?? Colors.purple,
                        Colors.purple[400] ?? Colors.purple,
                        Colors.orangeAccent[700] ?? Colors.orangeAccent
                      ]
              
                  )
                    
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
              SizedBox(height: MediaQuery.of(context).size.width / 10,),
              
              GestureDetector(
                onTap: () {
                  print('push');
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const SignUp(),
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
                    gradient:LinearGradient(
                      colors: [
                        Colors.purple[600] ?? Colors.purple,
                        Colors.purple[400] ?? Colors.purple,
                        Colors.orangeAccent[700] ?? Colors.orangeAccent
                      ]
              
                  )
                    
                  ),
                  child: const Center(
                    child: Text(
                      'SignUp',
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
            ],
          ),
        ),
        
      ),
    );
  }
}
