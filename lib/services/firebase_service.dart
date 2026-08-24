import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseService {
  final FirebaseAuth auth;
  final FirebaseFirestore firestore;
  FirebaseService({FirebaseAuth? auth, FirebaseFirestore? firestore}) : auth = auth ?? FirebaseAuth.instance, firestore = firestore ?? FirebaseFirestore.instance;

  Future<UserCredential> signInWithEmail(String email, String password) => auth.signInWithEmailAndPassword(email: email, password: password);
  Future<UserCredential> registerWithEmail(String email, String password) => auth.createUserWithEmailAndPassword(email: email, password: password);
  Future<void> signOut() => auth.signOut();
  CollectionReference<Map<String, dynamic>> collection(String name) => firestore.collection(name);
}
