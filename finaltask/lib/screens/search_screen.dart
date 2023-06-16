import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:finaltask/utils/colors.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController searchController= TextEditingController();
  bool isShowUsers=false;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    searchController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:  AppBar(
          backgroundColor: mobileBackgroundColor,
          title: TextFormField(
            controller: searchController,
            decoration: const InputDecoration(
                labelText: 'Search for a user'
            ),
            onFieldSubmitted: (String _){
              setState(() {
                isShowUsers= true;
              });
            },
          ),
        ),
        body: isShowUsers ? FutureBuilder(
          future: FirebaseFirestore.instance.collection('users')
              .where('username', isGreaterThanOrEqualTo: searchController.text, )
              .get(),
          builder: (context,snapshot){
            if(!snapshot.hasData){
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            return ListView.builder(
              itemCount: (snapshot.hasData! as dynamic).docs.length,
              itemBuilder: (context,index){
                return ListTile(
                  leading:  CircleAvatar(
                    backgroundImage: NetworkImage(
                        (snapshot.hasData! as dynamic).docs[index]['photoUrl']
                    ),
                  ),
                  title: Text((snapshot.hasData! as dynamic).docs[index]['username'],),
                );
              },
            );
          },
        ): Text('Posts')

    );
  }
}