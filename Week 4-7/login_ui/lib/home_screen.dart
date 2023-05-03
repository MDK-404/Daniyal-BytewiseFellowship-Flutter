import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    Center(
      child: Container(
        margin: EdgeInsets.all(12),
        padding: EdgeInsets.all(12),

        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage('assets/login1.png'),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        child: SingleChildScrollView(

          //scrollDirection: Axis.vertical,
          scrollDirection: Axis.horizontal,
          // child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              Scrollbar(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/product1.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            width: double.infinity,
                            color: Colors.black.withOpacity(0.5),
                            padding: EdgeInsets.all(8),
                            child: Text(
                              'Product 1',
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/product2.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            width: double.infinity,
                            color: Colors.black.withOpacity(0.5),
                            padding: EdgeInsets.all(8),
                            child: Text(
                              'Product 2',
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/product3.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            width: double.infinity,
                            color: Colors.black.withOpacity(0.5),
                            padding: EdgeInsets.all(8),
                            child: Text(
                              'Product 3',
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/product4.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            width: double.infinity,
                            color: Colors.black.withOpacity(0.5),
                            padding: EdgeInsets.all(8),
                            child: Text(
                              'Product 4',
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),

              ),

              SizedBox(height: 20),

               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/product5.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          width: double.infinity,
                          color: Colors.black.withOpacity(0.5),
                          padding: EdgeInsets.all(8),
                          child: Text(
                            'Product 5',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 5),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/product6.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          width: double.infinity,
                          color: Colors.black.withOpacity(0.5),
                          padding: EdgeInsets.all(8),
                          child: Text(
                            'Product 6',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 5),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/product7.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          width: double.infinity,
                          color: Colors.black.withOpacity(0.5),
                          padding: EdgeInsets.all(8),
                          child: Text(
                            'Product 7',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 5),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/product8.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          width: double.infinity,
                          color: Colors.black.withOpacity(0.5),
                          padding: EdgeInsets.all(8),
                          child: Text(
                            'Product 8',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ],
          ),

          // ),
        ),
      ),
    ),
      // Container(
      //   margin: EdgeInsets.all(12),
      //   padding: EdgeInsets.all(12),
      //   child: SingleChildScrollView(
      //     scrollDirection: Axis.horizontal,
      //     child: Scrollbar(
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: <Widget>[
      //           Container(
      //             width: 150,
      //             height: 150,
      //             decoration: BoxDecoration(
      //               image: DecorationImage(
      //                 image: AssetImage('assets/product1.jpeg'),
      //                 fit: BoxFit.cover,
      //               ),
      //             ),
      //             child: Column(
      //               mainAxisAlignment: MainAxisAlignment.end,
      //               children: <Widget>[
      //                 Container(
      //                   width: double.infinity,
      //                   color: Colors.black.withOpacity(0.5),
      //                   padding: EdgeInsets.all(8),
      //                   child: Text(
      //                     'Product 1',
      //                     style: TextStyle(color: Colors.white, fontSize: 20),
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ),
      //           SizedBox(width: 5),
      //           Container(
      //             width: 150,
      //             height: 150,
      //             decoration: BoxDecoration(
      //               image: DecorationImage(
      //                 image: AssetImage('assets/product1.jpeg'),
      //                 fit: BoxFit.cover,
      //               ),
      //             ),
      //             child: Column(
      //               mainAxisAlignment: MainAxisAlignment.end,
      //               children: <Widget>[
      //                 Container(
      //                   width: double.infinity,
      //                   color: Colors.black.withOpacity(0.5),
      //                   padding: EdgeInsets.all(8),
      //                   child: Text(
      //                     'Product 2',
      //                     style: TextStyle(color: Colors.white, fontSize: 20),
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ),
      //           SizedBox(width: 5),
      //           Container(
      //             width: 150,
      //             height: 150,
      //             decoration: BoxDecoration(
      //               image: DecorationImage(
      //                 image: AssetImage('assets/product2.jpg'),
      //                 fit: BoxFit.cover,
      //               ),
      //             ),
      //             child: Column(
      //               mainAxisAlignment: MainAxisAlignment.end,
      //               children: <Widget>[
      //                 Container(
      //                   width: double.infinity,
      //                   color: Colors.black.withOpacity(0.5),
      //                   padding: EdgeInsets.all(8),
      //                   child: Text(
      //                     'Product 3',
      //                     style: TextStyle(color: Colors.white, fontSize: 20),
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ),
      //           SizedBox(width: 5),
      //           Container(
      //             width: 150,
      //             height: 150,
      //             decoration: BoxDecoration(
      //               image: DecorationImage(
      //                 image: AssetImage('assets/product2.jpg'),
      //                 fit: BoxFit.cover,
      //               ),
      //             ),
      //             child: Column(
      //               mainAxisAlignment: MainAxisAlignment.end,
      //               children: <Widget>[
      //                 Container(
      //                   width: double.infinity,
      //                   color: Colors.black.withOpacity(0.5),
      //                   padding: EdgeInsets.all(8),
      //                   child: Text(
      //                     'Product 3',
      //                     style: TextStyle(color: Colors.white, fontSize: 20),
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ),
      //
      //         ],
      //       ),
      //     ),
      //   ),
      // ),


    SizedBox(height: 20),

    // ListView.builder(itemBuilder: context,index){
    //
    // }

    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // Image.asset(          'assets/login.png',
        //   width: 200,
        //   height: 200,
        //   fit: BoxFit.cover,
        // ),
        SizedBox(height: 20),
        Text(
          'Settings Page',
          style: TextStyle(fontSize: 30),
        ),
      ],
    ),
  ];

  static Widget _buildListItem(String title) {
    return ListTile(
      title: Text(title),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Draz'),
        actions: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            child: TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                fillColor: Colors.grey.shade100,
                filled: true,
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          // IconButton(
          //   icon: Icon(Icons.search),
          //   onPressed: () {
          //     //TODO: implement search functionality
          //   },
          // ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Column(
                  children: <Widget>[
                    DrawerHeader(
                      child: Text('Menu',style: TextStyle(fontWeight: FontWeight.bold),),


                    ),
                    SingleChildScrollView(
                      child: Scrollbar(
                        child: ListTile(
                          leading: Icon(Icons.person),
                          title: Text('Profile'),

                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.security),
                      title: Text('Security'),

                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.payment),
                      title: Text('Payments'),

                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.favorite),
                      title: Text('Wishlist'),

                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.notifications),
                      title: Text('Notifications'),

                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.label),
                      title: Text('Promotions'),

                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),

                    ListTile(
                      leading: Icon(Icons.logout),
                      title: Text('logout'),
                      onTap: () {
                        Navigator.pushNamed(context, 'login');
                      },
                    ),
                  ],
                )
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/home3.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
