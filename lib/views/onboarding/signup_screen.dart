import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  Future<UserCredential?> signInWithGoogle(BuildContext context) async {
    try {
      // Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      if (googleUser == null) {
        return null; // User canceled sign-in
      }

      // Obtain the auth details from the request
      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

      // Create a new credential
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Sign in to Firebase with the Google credential
      final UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Login Successful! Welcome, ${userCredential.user?.displayName}')),
      );

      // Navigate to home screen after successful login
      Navigator.pushReplacementNamed(context, '/home');
      
      return userCredential;
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Google Sign-In Failed: $e')),
      );
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Signup Screen', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                signInWithGoogle(context); // Call Google Sign-In
              },
              icon: Icon(Icons.login, color: Colors.white), // Google icon
              label: Text('Sign in with Google'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Google blue color
                foregroundColor: Colors.white, // Text color
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
