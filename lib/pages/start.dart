import 'package:flutter/material.dart';

class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bgImage.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0,200,0,0),
              child: Column(
                children: [
                  Text(
                    'MOVIE LIST APP',
                    style: TextStyle(
                      fontFamily: 'Oswald',
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: size.height/2),
                  Row(
                    children: [
                      Spacer(),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/login');
                          },
                          child: Text(
                              'LOGIN',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueGrey.shade700,
                            padding: EdgeInsets.all(20),
                            minimumSize: Size(size.width/2.25, 25.0),
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/register');
                          },
                          child: Text(
                            'REGISTER',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                            primary: Colors.blueGrey.shade900,
                            shadowColor: Colors.black38,
                            padding: EdgeInsets.all(20),
                            side: BorderSide(
                              color: Colors.black38,
                              width: 5,
                            ),
                            minimumSize: Size(size.width/2.25, 25.0),
                          ),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
