import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 40, 104, 243),
              Color.fromARGB(255, 47, 105, 116)
            ]),
      ),
      child: Scaffold(
        backgroundColor: Color.fromRGBO(14, 35, 37, 1),
        appBar: AppBar(
          elevation: 0.0,
          title: Container(
            margin: EdgeInsets.fromLTRB(10, 18, 0, 0),
            child: GradientText(
              'ABC',
              style: TextStyle(
                  fontSize: 40.0,
                  fontFamily: 'JSB',
                  fontWeight: FontWeight.bold),
              colors: [Color(0xFF76C6D0), Color(0XFF7BD3B0)],
            ),
          ),
          backgroundColor: Colors.transparent,
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // LinearGradientMask(
                //   child: Icon(
                //     Icons.abc,
                //     size: 250,
                //     color: Colors.white,
                //   ),
                // ),
                // // Icon(
                //   Icons.abc,
                //   color: Colors.white,
                //   size: 64,
                // ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Icon(Icons.menu, color: Color(0xFF76C6D0), size: 48),
                )
              ],
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 17),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 14,
              ),
              Container(
                child: Text(
                  'PULSE',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'JSB',
                      fontWeight: FontWeight.bold,
                      fontSize: 100),
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(5, 18, 5, 0),
                child: Text(
                  "Welcome to Pulse, the uptime monitoring service that helps you ensure your website and online services are always running smoothly. We offer real-time monitoring, alerts, and analytics to help you identify and fix any issues as they arise.",
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'KR', fontSize: 20),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(2, 0, 1, 2),
                width: double.infinity / 2,
                child: Row(
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Color(0xFF7BD3B0),
                          side: BorderSide(color: Color(0xFF7BD3B0), width: 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          padding: EdgeInsets.symmetric(
                              vertical: 17, horizontal: 60)),
                      onPressed: () {},
                      child: GradientText(
                        'Sign In',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontFamily: 'KR',
                        ),
                        colors: [
                          Colors.white,
                          Color.fromARGB(255, 238, 255, 233)
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          side: BorderSide(color: Color(0xFF7BD3B0), width: 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          padding: EdgeInsets.symmetric(
                              vertical: 17, horizontal: 40)),
                      onPressed: () {},
                      child: GradientText(
                        'Learn More',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontFamily: 'KR',
                        ),
                        colors: [Color(0xFF7BD3B0), Color(0xFF76C6D0)],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 46, 0, 0),
                child: Image(
                  image: AssetImage(
                    'images/graphs.png',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Image(image: AssetImage('images/metre.png')),
              ),
              SizedBox(
                height: 28,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'OVER 100+',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 41,
                    fontFamily: 'JSB',
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'INTEGRATIONS',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 41,
                    fontFamily: 'JSB',
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(4, 5, 4, 0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    width: 450,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('images/logo1png.png'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('images/logo2png.png'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('images/logo3.png'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('images/logo4png.png'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('images/logo5.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 100,

                decoration: BoxDecoration(),

                // gradient: LinearGradient(
                //     begin: Alignment.topCenter,
                //     end: Alignment.bottomCenter,
                //     // stops: [0.1, 0.5, 0.7, 0.9],
                //     colors: [Color(0xFF161616), Color(0xFF0C8D7A)])),
                margin: EdgeInsets.fromLTRB(4, 5, 4, 0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    width: 450,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('images/logo5.png'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('images/logo6.png'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('images/logo3.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 10),
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      side: BorderSide(color: Color(0xFF7BD3B0), width: 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      padding:
                          EdgeInsets.symmetric(vertical: 17, horizontal: 40)),
                  onPressed: () {},
                  child: GradientText(
                    'Learn More',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontFamily: 'KR',
                    ),
                    colors: [Color(0xFF7BD3B0), Color(0xFF76C6D0)],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                alignment: Alignment.center,
                child: Text(
                  'WHAT WE DO',
                  style: TextStyle(
                      color: Colors.white, fontSize: 45.9, fontFamily: 'JSB'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                // alignment: Alignment.center,
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: Text(
                  "Stay informed with real-time alerts, track performance with detailed reports, and improve uptime with built-in error tracking.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'KR', fontSize: 19),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
                    width: double.infinity,
                    height: 180,
                    decoration: BoxDecoration(
                        color: Color(0xFF7BD3B0),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Color(0xFF7BD3B0), Color(0xFF76C6D0)]),
                        borderRadius: BorderRadius.circular(35)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Real Time Monitoring.',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'KB',
                              fontSize: 30),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Monitor your website and online services in real-time, and ensure that you are always aware of any potential issues. ',
                          style: TextStyle(fontFamily: 'KR', fontSize: 15),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
                    width: double.infinity,
                    height: 180,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Real Time Monitoring.',
                          style: TextStyle(
                              color: Color(0xFF7BD3B0),
                              fontFamily: 'KB',
                              fontSize: 30),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Monitor your website and online services in real-time, and ensure that you are always aware of any potential issues. ',
                          style: TextStyle(fontFamily: 'KR', fontSize: 15),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
                    width: double.infinity,
                    height: 180,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Real Time Monitoring.',
                          style: TextStyle(
                              color: Color(0xFF7BD3B0),
                              fontFamily: 'KB',
                              fontSize: 30),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Monitor your website and online services in real-time, and ensure that you are always aware of any potential issues. ',
                          style: TextStyle(fontFamily: 'KR', fontSize: 15),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
                    width: double.infinity,
                    height: 180,
                    decoration: BoxDecoration(
                        color: Color(0xFF7BD3B0),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Color(0xFF7BD3B0), Color(0xFF76C6D0)]),
                        borderRadius: BorderRadius.circular(35)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Real Time Monitoring.',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'KB',
                              fontSize: 30),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Monitor your website and online services in real-time, and ensure that you are always aware of any potential issues. ',
                          style: TextStyle(fontFamily: 'KR', fontSize: 15),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              // Container(
              //   child: ,
              // )

              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Our Pricing',
                        style: TextStyle(
                            color: Colors.grey, fontFamily: 'KB', fontSize: 30),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'CHOOSE THE RIGHT PLAN FOR YOU',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'JSB',
                            fontSize: 40),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    // horz - 35 and v - 40
                    Container(
                      padding: EdgeInsets.fromLTRB(35, 40, 24, 10),
                      width: 280,
                      height: 420,
                      decoration: BoxDecoration(
                          border:
                              Border.all(width: 1, color: Color(0xFF7BD3B0)),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(29)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              'Basic',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'JSB',
                                  fontSize: 30),
                            ),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Container(
                            child: Text(
                              'FREE',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'JSB',
                                  fontSize: 60),
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Container(
                            child: Text(
                              'Pulse provides detailed analytics and reports to help you understand the performance of',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'JSM',
                                  fontSize: 16),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.check_box,
                                color: Color(0xFF7BD3B0),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Moniters 1 websites',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'KR',
                                    fontSize: 17.5),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.check_box,
                                color: Color(0xFF7BD3B0),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Real-time alets',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'KR',
                                    fontSize: 17.5),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.check_box,
                                color: Color(0xFF7BD3B0),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Error tracking',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'KR',
                                    fontSize: 17.5),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 7),
                            alignment: Alignment.center,
                            child: TextButton(
                                style: TextButton.styleFrom(
                                    backgroundColor: Color(0xFF7BD3B0),
                                    side: BorderSide(
                                        color: Color(0xFF7BD3B0), width: 1),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    padding: EdgeInsets.symmetric(
                                        vertical: 17, horizontal: 60)),
                                onPressed: () {},
                                child: GradientText(
                                  'Join For',
                                  style: TextStyle(
                                    fontSize: 24.0,
                                    fontFamily: 'KR',
                                  ),
                                  colors: [
                                    Colors.white,
                                    Color.fromARGB(255, 238, 255, 233)
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(35, 40, 21, 10),
                      width: 280,
                      height: 420,
                      decoration: BoxDecoration(
                          border:
                              Border.all(width: 1, color: Color(0xFF7BD3B0)),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Color(0xFF7BD3B0), Color(0xFF76C6D0)]),
                          borderRadius: BorderRadius.circular(29)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              'Professional',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'JSB',
                                  fontSize: 30),
                            ),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  child: Text(
                                    '\$29.99',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'JSB',
                                        fontSize: 70),
                                  ),
                                ),
                                Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Text(
                                      "/ month",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'JSB'),
                                    ))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Container(
                            child: Text(
                              'Pulse provides detailed analytics and reports to help you understand the performance of',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'JSM',
                                  fontSize: 16),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.check_box,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Moniters 1 websites',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'KR',
                                    fontSize: 17.5),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.check_box,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Real-time alets',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'KR',
                                    fontSize: 17.5),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.check_box,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Error tracking',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'KR',
                                    fontSize: 17.5),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 7),
                            alignment: Alignment.center,
                            child: TextButton(
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    side: BorderSide(
                                        color: Color(0xFF7BD3B0), width: 1),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    padding: EdgeInsets.symmetric(
                                        vertical: 17, horizontal: 60)),
                                onPressed: () {},
                                child: GradientText(
                                  'Join For',
                                  style: TextStyle(
                                    fontSize: 24.0,
                                    fontFamily: 'KR',
                                  ),
                                  colors: [
                                    Color(0xFF7BD3B0),
                                    Color.fromARGB(255, 123, 150, 115)
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(35, 40, 21, 10),
                      width: 280,
                      height: 420,
                      decoration: BoxDecoration(
                          border:
                              Border.all(width: 1, color: Color(0xFF7BD3B0)),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(29)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              'EnterPrise',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'JSB',
                                  fontSize: 30),
                            ),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  child: Text(
                                    '\$49.99',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'JSB',
                                        fontSize: 70),
                                  ),
                                ),
                                Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Text(
                                      "/ month",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'JSB'),
                                    ))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Container(
                            child: Text(
                              'Pulse provides detailed analytics and reports to help you understand the performance of',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'JSM',
                                  fontSize: 16),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.check_box,
                                color: Color(0xFF7BD3B0),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Moniters 1 websites',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'KR',
                                    fontSize: 17.5),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.check_box,
                                color: Color(0xFF7BD3B0),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Real-time alets',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'KR',
                                    fontSize: 17.5),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.check_box,
                                color: Color(0xFF7BD3B0),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Error tracking',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'KR',
                                    fontSize: 17.5),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 7),
                            alignment: Alignment.center,
                            child: TextButton(
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    side: BorderSide(
                                        color: Color(0xFF7BD3B0), width: 1),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    padding: EdgeInsets.symmetric(
                                        vertical: 17, horizontal: 60)),
                                onPressed: () {},
                                child: GradientText(
                                  'Join For',
                                  style: TextStyle(
                                    fontSize: 24.0,
                                    fontFamily: 'KR',
                                  ),
                                  colors: [
                                    Color(0xFF7BD3B0),
                                    Color.fromARGB(255, 123, 150, 115)
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                    Container(),
                    SizedBox(
                      height: 30,
                    ),

                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                        width: double.infinity,
                        height: 360,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Color(0xFF7BD3B0), Color(0xFF76C6D0)]),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(20, 45, 20, 0),
                                  child: Image(
                                      image: AssetImage(
                                          'images/Vectorqoutes.png')),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(20, 45, 20, 0),
                                  child: Image(
                                    image: AssetImage('images/Pathtwitter.png'),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 20),
                              child: Text(
                                "I've been using Pulse for the past year to monitor the uptime of my e-commerce website, and it has been a lifesaver! Before Pulse, we were constantly having issues with our website going down, which meant lost sales and frustrated customers. With Pulse, we're alerted immediately if there's a problem, so we can fix it before it becomes a bigger issue. I highly recommend Pulse to any business that relies on their website to generate revenue",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'KM',
                                    fontSize: 18),
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomRight,
                              padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
                              child: Image(
                                image: AssetImage('images/Vectorqoutes.png'),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                        width: double.infinity,
                        height: 360,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.white,
                                Color.fromARGB(255, 232, 243, 245)
                              ]),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(20, 45, 20, 0),
                                  child: Image(
                                      color: Color(0xFF7BD3B0),
                                      image: AssetImage(
                                          'images/Vectorqoutes.png')),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(20, 45, 20, 0),
                                  child: Image(
                                    color: Color(0xFF7BD3B0),
                                    image: AssetImage('images/Pathfb.png'),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 20),
                              child: Text(
                                "I've been using Pulse for the past year to monitor the uptime of my e-commerce website, and it has been a lifesaver! Before Pulse, we were constantly having issues with our website going down, which meant lost sales and frustrated customers. With Pulse, we're alerted immediately if there's a problem, so we can fix it before it becomes a bigger issue. I highly recommend Pulse to any business that relies on their website to generate revenue",
                                style:
                                    TextStyle(fontFamily: 'KM', fontSize: 18),
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomRight,
                              padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
                              child: Image(
                                color: Color(0xFF7BD3B0),
                                image: AssetImage('images/Vectorqoutes.png'),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                        width: double.infinity,
                        height: 360,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.white,
                                Color.fromARGB(255, 232, 243, 245)
                              ]),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(20, 45, 20, 0),
                                  child: Image(
                                      color: Color(0xFF7BD3B0),
                                      image: AssetImage(
                                          'images/Vectorqoutes.png')),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(20, 45, 20, 0),
                                  child: Image(
                                    color: Color(0xFF7BD3B0),
                                    image: AssetImage('images/Pathfb.png'),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 20),
                              child: Text(
                                "I've been using Pulse for the past year to monitor the uptime of my e-commerce website, and it has been a lifesaver! Before Pulse, we were constantly having issues with our website going down, which meant lost sales and frustrated customers. With Pulse, we're alerted immediately if there's a problem, so we can fix it before it becomes a bigger issue. I highly recommend Pulse to any business that relies on their website to generate revenue",
                                style:
                                    TextStyle(fontFamily: 'KM', fontSize: 18),
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomRight,
                              padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
                              child: Image(
                                color: Color(0xFF7BD3B0),
                                image: AssetImage('images/Vectorqoutes.png'),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                        width: double.infinity,
                        height: 360,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.white,
                                Color.fromARGB(255, 232, 243, 245)
                              ]),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(20, 45, 20, 0),
                                  child: Image(
                                      color: Color(0xFF7BD3B0),
                                      image: AssetImage(
                                          'images/Vectorqoutes.png')),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(20, 45, 20, 0),
                                  child: Image(
                                    color: Color(0xFF7BD3B0),
                                    image: AssetImage('images/Pathfb.png'),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 20),
                              child: Text(
                                "I've been using Pulse for the past year to monitor the uptime of my e-commerce website, and it has been a lifesaver! Before Pulse, we were constantly having issues with our website going down, which meant lost sales and frustrated customers. With Pulse, we're alerted immediately if there's a problem, so we can fix it before it becomes a bigger issue. I highly recommend Pulse to any business that relies on their website to generate revenue",
                                style:
                                    TextStyle(fontFamily: 'KM', fontSize: 18),
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomRight,
                              padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
                              child: Image(
                                color: Color(0xFF7BD3B0),
                                image: AssetImage('images/Vectorqoutes.png'),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 26,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Status Page',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'JSB',
                            fontSize: 39),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Easily communicate outages and maintenance with a customizable and easy-to-use status page. Stay transparent and reduce customer frustration with real-time updates and incident history",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromARGB(255, 224, 221, 221),
                            fontFamily: 'KM',
                            letterSpacing: 0.4,
                            fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Image(
                        image: AssetImage('images/metrics.png'),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                        width: double.infinity,
                        height: 360,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Color(0xFF7BD3B0), Color(0xFF76C6D0)]),
                        ),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
                              alignment: Alignment.center,
                              child: Text(
                                'Get Started with Pulse and Experience the Benefits of Reliable Uptime Monitoring',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'KB',
                                  fontSize: 32,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 10),
                              child: Text(
                                "Sign up now and receive a free trial to see how Pulse can help improve your business running smoothly.",
                                textAlign: TextAlign.center,
                                style:
                                    TextStyle(fontFamily: 'KM', fontSize: 18),
                              ),
                            ),
                            SizedBox(
                              height: 35,
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  side: BorderSide(
                                      color: Color(0xFF7BD3B0), width: 1),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12)),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 17, horizontal: 60)),
                              onPressed: () {},
                              child: GradientText(
                                'Join For Free',
                                style: TextStyle(
                                  fontSize: 24.0,
                                  fontFamily: 'KR',
                                ),
                                colors: [
                                  Color(0xFF7BD3B0),
                                  Color.fromARGB(255, 111, 204, 233)
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GradientText(
                    'PULSE.',
                    style: TextStyle(
                        fontSize: 40.0,
                        fontFamily: 'JSB',
                        fontWeight: FontWeight.bold),
                    colors: [Color(0xFF76C6D0), Color(0XFF7BD3B0)],
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    child: Divider(
                      color: Color(0XFF7BD3B0),
                      // indent: 10,
                      thickness: 2,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3),
                    child: Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Text(
                              'About',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'KM',
                                  fontSize: 17),
                            )),
                        Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Text(
                              'Features',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 211, 211, 211),
                                  fontFamily: 'KM',
                                  fontSize: 17),
                            )),
                        Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Text(
                              'Pricing',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 211, 211, 211),
                                  fontFamily: 'KM',
                                  fontSize: 17),
                            )),
                        Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Text(
                              'Carear',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 211, 211, 211),
                                  fontFamily: 'KM',
                                  fontSize: 17),
                            )),
                        Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Text(
                              'Helps',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 211, 211, 211),
                                  fontFamily: 'KM',
                                  fontSize: 17),
                            )),
                        Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Text(
                              'Privacy Policy',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 211, 211, 211),
                                  fontFamily: 'KM',
                                  fontSize: 17),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Image(
                            image: AssetImage('images/Pathins.png'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Image(
                            image: AssetImage('images/Pathins.png'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Image(
                            image: AssetImage('images/Pathins.png'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Image(
                            image: AssetImage('images/Pathins.png'),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ))
            ],
          ),
        )),
      ),
    );
  }
}
