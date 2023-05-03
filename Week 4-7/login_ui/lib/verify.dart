import 'package:flutter/material.dart';
class Verify extends StatefulWidget {
  const Verify({Key? key}) : super(key: key);

  @override
  _VerifyState createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Verification'),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
      body: Container(

        width:MediaQuery.of(context).size.width*2,

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Login.jpg'),
            fit: BoxFit.fill,
          ),
        ),
             // width: MediaQuery.of(context).size.width*0.5 ,
        child: Center(
          // child: SingleChildScrollView(
            child: Container(
                width:MediaQuery.of(context).size.width*2,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.all(12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 32),
                  Text(
                    'Enter Verification Code',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 32),
                  // TextField(
                  //   style: TextStyle(color: Colors.black),
                  //   decoration: InputDecoration(
                  //     fillColor: Colors.grey.shade100,
                  //     filled: true,
                  //     hintText: 'Email',
                  //     prefixIcon: Icon(Icons.email),
                  //     border: OutlineInputBorder(
                  //       borderRadius: BorderRadius.circular(10),
                  //     ),
                  //   ),
                  // ),

                  Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RawMaterialButton(
                        onPressed: () {},
                        shape: CircleBorder(),
                        fillColor: Colors.white,
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            maxLength: 1,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              counter: Offstage(),

                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 0.075),
                      RawMaterialButton(
                        onPressed: () {},
                        shape: CircleBorder(),
                        fillColor: Colors.white,
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            maxLength: 1,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              counter: Offstage(),

                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 0.075),
                      RawMaterialButton(
                        onPressed: () {},
                        shape: CircleBorder(),
                        fillColor: Colors.white,
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            maxLength: 1,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              counter: Offstage(),

                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 0.075),
                      RawMaterialButton(
                        onPressed: () {},
                        shape: CircleBorder(),
                        fillColor: Colors.white,
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            maxLength: 1,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              counter: Offstage(),

                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),


                  SizedBox(height: 16),

                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'verify');
                    },
                    child: Text(
                      'Verify',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Color(0xff4c505b),
                        fontSize: 18,
                      ),
                    ),
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                    ),
                  ),
                  SizedBox(height: 16),
                  // InkWell(
                  //   onTap:() {
                  //     Navigator.pushNamed(context, 'login');
                  //   } ,
                  //   child: Container(
                  //       height: 50,
                  //       width: double.infinity,
                  //       decoration: const BoxDecoration(
                  //           color: Colors.greenAccent
                  //       ),
                  //       child: const Center(
                  //         child: Text('Get Started'),
                  //       )
                  //   ),
                  // )

                ],
              ),
            ),
          // ),
        ),
      ),
    );
  }
}