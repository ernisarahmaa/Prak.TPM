import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '123200003',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Login Screen'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: const EdgeInsets.all((30.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const FlutterLogo(
              size: 35,
              style: FlutterLogoStyle.markOnly,
            ),
            const SizedBox(height: 50),
            SizedBox(
              child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0)
                    ),
                    hintText: 'Email',
                    contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0)
                    ),
                    hintText: 'Password',
                    contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                  ),
                ),
              ],
              )
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Log In'),
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                minimumSize: const Size.fromHeight(40),
                // minimumSize: const Size(330, 40),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7)
                ),
              ),
            ),
            TextButton(
                onPressed: () {},
                child: const Text('Forgot password?'),
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  primary: Colors.grey,
                ),
            )
          ],
        ),
      ),
    );
  }
}
