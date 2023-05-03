import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _Splash createState() => _Splash();
}

class _Splash extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   automaticallyImplyLeading: true,
      // ),
      body: Container(

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Login.jpg'),
            fit: BoxFit.fill,
          ),
        ),

        child: Center(
          child: SingleChildScrollView(
            child: Container(
              width: 400,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 32),
                  Text(
                    'Z-Mart',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 32),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/logo.jpg'),
                    radius: 200,
                  ),



                  SizedBox(height: 16),
                  // TextButton(
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, 'login');
                  //   },
                  //   child: Text(
                  //     'Get Started',
                  //     textAlign: TextAlign.left,
                  //     style: TextStyle(
                  //       decoration: TextDecoration.underline,
                  //       color: Color(0xff4c505b),
                  //       fontSize: 18,
                  //     ),
                  //   ),
                  //   style: ButtonStyle(
                  //     padding: MaterialStateProperty.all(EdgeInsets.zero),
                  //   ),
                  // ),
                  SizedBox(height: 16),
                InkWell(
                  onTap:() {
                    Navigator.pushNamed(context, 'login');
                  } ,
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.greenAccent
                    ),
                    child: const Center(
                      child: Text('Get Started'),
                    )
                  ),
                )

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}