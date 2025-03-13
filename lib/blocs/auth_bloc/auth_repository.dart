import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Sign Up and Store User Data
  Future<User?> signUpWithEmail({
    required String name,
    required String username,
    required String email,
    required String password,
    required String accountType, // New field for account type
  }) async {
    try {
      // Create user in Firebase Auth
      UserCredential userCredential =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      User? user = userCredential.user;

      if (user != null) {
        // Store user details in Firestore
        await _firestore.collection("users").doc(user.uid).set({
          "uid": user.uid,
          "name": name,
          "username": username,
          "email": email,
          "accountType": accountType, // Store selected account type
          "createdAt": FieldValue.serverTimestamp(),
        });
      }

      return user;
    } catch (e) {
      throw Exception("Signup failed: $e");
    }
  }
}
