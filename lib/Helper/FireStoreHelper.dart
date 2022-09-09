import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:recipes_app/models/Likedrecipe.dart';

import '../models/user.dart';

class FirestoreHelper{
   final uid  = FirebaseAuth.instance.currentUser!.uid; 
 

  FirestoreHelper._();
 static FirestoreHelper firestoreHelper=FirestoreHelper._();
  FirebaseFirestore firestoreinstance=FirebaseFirestore.instance;
addUserToFireStore(user appuser)async{
  appuser.id=uid;
   DocumentReference<Map<String, dynamic>> documentReference= await FirebaseFirestore.instance.collection("user").doc(uid).collection("allusers").add(appuser.toMap());
   
}

  Future<user> getUserFromFireStore(String id)async{
    DocumentSnapshot<Map<String, dynamic>> documentSnapshot = await firestoreinstance.collection("user").doc(id).get();
    documentSnapshot.data();
    return user.fromMap(documentSnapshot.data()!);
  }
   CollectionReference<Map<String, dynamic>>  firebaseInstanceLiked= FirebaseFirestore.instance.collection('Liked');


  // addLikedRecipe(user user)async{
  
  // log(uid);
  // await FirebaseFirestore.instance.collection('Liked').doc(uid).add(user.toMap());
  //   DocumentReference<Map<String, dynamic>> documentReference=await 
  //  firebaseInstanceLiked.doc(uid).(user.toMap());
  //  //like.id!=documentReference.id;
  //  return uid;


  // }
   Future<LikedRecipe> addNewuserlike(LikedRecipe likedRecipe)async{
   DocumentReference<Map<String, dynamic>> documentReference=await FirebaseFirestore.instance
    .collection("user")
    .doc(uid)
    .collection("Userliked")
    .add(likedRecipe.toMap());
   //likedRecipe.uid=documentReference.id;
    return likedRecipe;

  }
  // Future<List<LikedRecipe>> getLikedFromFireStore()async{
  //   QuerySnapshot<Map<String, dynamic>> querySnapshot = await firebaseInstanceLiked.get();
  //   List<QueryDocumentSnapshot<Map<String, dynamic>>> documents =querySnapshot.docs;
  //   List<LikedRecipe> likedlist = documents.map((e){
  //     LikedRecipe like = LikedRecipe.fromMap(e.data());
  //   //  like.id!=e.id;
  //     return like;
  //   }).toList();
  //   return likedlist;
  // }
//  Future<Stream<QuerySnapshot<Map<String, dynamic>>> > getData()async{
//      User user = await FirebaseAuth.instance.currentUser!;
//  Stream<QuerySnapshot<Map<String, dynamic>>> snapshots =   FirebaseFirestore.instance.collection("user")
//     .doc(uid)
//     .collection("Userliked").snapshots();
//     log(snapshots.toString());
//     return snapshots;
//   }
   Future<List<LikedRecipe>> getAllLiked()async{
  QuerySnapshot<Map<String, dynamic>>querySnapshot= await FirebaseFirestore.instance
    .collection("user")
    .doc(uid)
    .collection("Userliked")
   .get();
   List<LikedRecipe>products= querySnapshot.docs.map((e){
 Map<String,dynamic>data=e.data();
 //data['uidlike']=e.id;
 LikedRecipe ike=LikedRecipe.fromMap(data);
 return ike;

   }).toList();
    
    
  //  

  //  // data['id']=e.id;
  //   // Product product=Product.fromMap(data);
  //   // return product;

  //  }).toList();
return products;
 }
 deleteliked(LikedRecipe liked)async{
    await  FirebaseFirestore.instance
    .collection("user")
    .doc(uid)
    .collection("Userliked")
    .doc(liked.uidlike).
   delete();

  }
  }

 
    
