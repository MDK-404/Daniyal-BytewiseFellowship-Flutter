import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:finaltask/resources/storage_methods.dart';
import 'package:uuid/uuid.dart';

import '../models/post.dart';

class FireStoreMethods {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> uploadPost(
    String description,
      Uint8List file,
      String uid,
    String username,
    String profImage,


  ) async {
    String result = "Some error occured";
    try {
      String photoUrl =
          await StorageMethods().uploadImageToStorage('posts', file, true);

      String postId = const Uuid().v1();
      Post post = Post(
          description: description,
          uid: uid,
          username: username,
          postId: postId,
          datePublished: DateTime.now(),
          postUrl: photoUrl,
          profImage: profImage,
          likes: []);
      _firestore.collection('posts').doc(postId).set(
            post.toJson(),
          );
      result="Success";
    } catch (err) {
      result=err.toString();

    }
    return result;
  }
  Future<void> likePost(String postId, String uid, List likes) async{
    try {
      if(likes.contains(uid)) {
        await _firestore.collection('posts').doc(postId).update({
          'likes': FieldValue.arrayRemove([uid]),
        });
      }else{
        await _firestore.collection('posts').doc(postId).update( {
          'likes': FieldValue.arrayUnion([uid]),
        });
      }
    } catch(e){
      print(e.toString(),);
    }
  }

  Future<void> postComment(String postId, String text, String uid,String name, String profilePic) async{

    try{
     if(text.isNotEmpty){
       String commentId=const Uuid().v1();
       await _firestore.collection('posts').doc(postId).collection('comments').doc(commentId).set({
         'profilePic': profilePic,
         'name': name,
         'uid': uid,
         'text': text,
         'commentid': commentId,
         'datePublished': DateTime.now(),

       });
     }else{
      print('Text is empty');
     }
    } catch(e){
      print(
        e.toString(),
      );
    }
  }

  // Deleting Post

Future<void> deletePost(String postId) async{
    try{
      await  _firestore.collection('posts').doc(postId).delete();
    } catch(err){
      print(err.toString());
    }


}
}
