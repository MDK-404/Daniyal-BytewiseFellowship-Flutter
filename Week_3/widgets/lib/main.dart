import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          title: Text("Lottery App"),
        ),
        body: Column(
          mainAxisAlignment:MainAxisAlignment.center ,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:   [


           Expanded(child:  ListView.builder(
             itemCount: 5,
             itemBuilder: (context, index){
               return const ListTile(
                 leading: CircleAvatar(
                   radius: 10,
                   backgroundColor: Colors.red,
                   backgroundImage: NetworkImage('https://cdn2.sharechat.com/img_563717_1169e520_1674913559896_sc.jpg'),

                 ),
                 title: Text('Daniyal Khan '),
                 subtitle: Text('Subscribe to my channel'),
                 trailing: Text('1:47 PM'),
               );
             },
           ))

            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: TextFormField(
            //     keyboardType: TextInputType.emailAddress,
            //     style: TextStyle(fontSize: 18, color: Colors.black),
            //     decoration: InputDecoration(
            //       prefixIcon: Icon(Icons.email),
            //       hintText: 'Email',
            //       labelText: 'Email',
            //       hintStyle: TextStyle(fontSize: 13),
            //         enabledBorder: OutlineInputBorder(
            //           borderSide: BorderSide(color: Colors.red, width: 1)
            //         ),
            //       focusedBorder: OutlineInputBorder(
            //           borderSide: BorderSide(color: Colors.blueGrey, width: 2)
            //       )
            //     ),
            //   ),
            // )
          // RichText(
          //     text: TextSpan(
          //       text: 'Hello',
          //       style: Theme.of(context).textTheme.bodyText1,
          //       children: [
          //         TextSpan(text:'World', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
          //
          //       ]
          //     )
          // ),
            //Row Widget
            // Row(
            //   children: [
            //     //Expanded widget occupies full screen
            //     Expanded(
            //         child:  Container(
            //           color: Colors.green,
            //           height: 250,
            //           child: Text('Container1'),
            //         ),
            //     ),
            //     // Container(
            //     //   color: Colors.green,
            //     //   height: 250,
            //     //   child: Text('Container1'),
            //     // ),
            //     Expanded(
            //       child: Container(
            //         color: Colors.red,
            //         height: 250,
            //         child: Text('Container1'),
            //       ),
            //     )
            //
            //   ],
            // ),
            // Center(
            //   child: Container(
            //     height: 250,
            //     width: 250,
            //     // padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            //     // margin: EdgeInsets.only(left: 500),
            //     decoration:   BoxDecoration(
            //       color: Colors.orange,
            //       borderRadius:   BorderRadius.circular(10),
            //         border: Border.all(
            //           color: Colors.red,
            //           width: 3
            //     ),
            //
            //       image: const DecorationImage(
            //         fit: BoxFit.cover,
            //         image: NetworkImage('https://images.pexels.com/photos/733853/pexels-photo-733853.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')
            //       ),
            //         boxShadow:  const [
            //           BoxShadow(
            //             color: Colors.blueGrey,
            //             blurRadius: 10
            //           )
            //         ]
            //     ),
            //     child: Center(child: Text('Login')),
            //   ),
            // )
            // SizedBox(
            //   child: Stack(
            //     alignment: Alignment.center,
            //     children: [
            //       Container(
            //         height: 100,
            //         width: 100,
            //         color: Colors.cyan,
            //       ),
            //       const Positioned(
            //           child: Text('Daniyal Khan')
            //       )
            //
            //     ],
            //   ),
            // ),
            // Stack(
            //   children: [
            //     Container(
            //
            //       height: 100,
            //       width: 140,
            //       color: Colors.grey,
            //     ),
            //     Container(
            //
            //       height: 90,
            //       width: 130,
            //       color: Colors.red,
            //     ),
            //     Container(
            //
            //       height: 80,
            //       width: 120,
            //       color: Colors.blue,
            //     )
            //   ],
            // ),

            // Center(
            //   child: CircleAvatar(
            //     radius: 100,
            //     backgroundColor: Colors.red,
            //      backgroundImage: NetworkImage('https://cdn2.sharechat.com/img_563717_1169e520_1674913559896_sc.jpg'),
            //
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
