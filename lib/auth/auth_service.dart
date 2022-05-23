import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
 final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Stream<String> get onAuthStateChanged =>
      _firebaseAuth.authStateChanges().map(
            (User user) => user?.uid,
      );

  // to get uid
  Future<String> getCurrentUID() async {
    return (_firebaseAuth.currentUser).uid;
  }

  // GET CURRENT USER
  Future getCurrentUser() async {
    return _firebaseAuth.currentUser;
  }

  // Email & Password Sign Up
  Future<String> createUserWithEmailAndPassword(String email, String password,
      String name) async {
    final authResult = await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    // Update  username
    
    return authResult.user.uid;
  }

  }

  // Email & Password Sign In
  Future<String> signInWithEmailAndPassword(String email,
      String password) async {
    return (await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email, password: password)).user.uid;
  }

  // Sign Out
  signOut() {
    return FirebaseAuth.instance.signOut();
  }

//   // Reset Password
//   Future sendPasswordResetEmail(String email) async {
//     return _firebaseAuth.sendPasswordResetEmail(email: email);
//   }

//   // Create Anonymous User
//   Future singInAnonymously() {
//     return _firebaseAuth.signInAnonymously();
//   }

//   Future convertUserWithEmail(String email, String password, String name) async {
//     final currentUser =  _firebaseAuth.currentUser;

//     final credential = EmailAuthProvider.getCredential(email: email, password: password);
//     await currentUser.linkWithCredential(credential);
//     await updateUserName(name, currentUser);
//   }

//   Future convertWithGoogle() async {
//     final currentUser = await _firebaseAuth.currentUser();
//     final GoogleSignInAccount account = await _googleSignIn.signIn();
//     final GoogleSignInAuthentication _googleAuth = await account.authentication;
//     final AuthCredential credential = GoogleAuthProvider.getCredential(
//       idToken: _googleAuth.idToken,
//       accessToken: _googleAuth.accessToken,
//     );
//     await currentUser.linkWithCredential(credential);
//     await updateUserName(_googleSignIn.currentUser.displayName, currentUser);
//   }

//   // GOOGLE
//   Future<String> signInWithGoogle() async {
//     final GoogleSignInAccount account = await _googleSignIn.signIn();
//     final GoogleSignInAuthentication _googleAuth = await account.authentication;
//     final AuthCredential credential = GoogleAuthProvider.getCredential(
//         idToken: _googleAuth.idToken,
//         accessToken: _googleAuth.accessToken,
//     );
//     return (await _firebaseAuth.signInWithCredential(credential)).user.uid;
//   }

//   // APPLE
//   Future signInWithApple() async {
//     final AuthorizationResult result = await AppleSignIn.performRequests([
//       AppleIdRequest(requestedScopes: [Scope.email, Scope.fullName])
//     ]);

//     switch (result.status) {
//       case AuthorizationStatus.authorized:

//         final AppleIdCredential _auth = result.credential;
//         final OAuthProvider oAuthProvider = new OAuthProvider(providerId: "apple.com");

//         final AuthCredential credential = oAuthProvider.getCredential(
//             idToken: String.fromCharCodes(_auth.identityToken),
//             accessToken: String.fromCharCodes(_auth.authorizationCode),
//         );

//         await _firebaseAuth.signInWithCredential(credential);

//         // update the user information
//         if (_auth.fullName != null) {
//           _firebaseAuth.currentUser().then( (value) async {
//             UserUpdateInfo user = UserUpdateInfo();
//             user.displayName = "${_auth.fullName.givenName} ${_auth.fullName.familyName}";
//             await value.updateProfile(user);
//           });
//         }

//         break;

//       case AuthorizationStatus.error:
//         print("Sign In Failed ${result.error.localizedDescription}");
//         break;

//       case AuthorizationStatus.cancelled:
//         print("User Cancled");
//         break;
//     }
//   }

// }

// class NameValidator {
//   static String validate(String value) {
//     if (value.isEmpty) {
//       return "Name can't be empty";
//     }
//     if (value.length < 2) {
//       return "Name must be at least 2 characters long";
//     }
//     if (value.length > 50) {
//       return "Name must be less than 50 characters long";
//     }
//     return null;
//   }
// }

// class EmailValidator {
//   static String validate(String value) {
//     if (value.isEmpty) {
//       return "Email can't be empty";
//     }
//     return null;
//   }
// }

// class PasswordValidator {
//   static String validate(String value) {
//     if (value.isEmpty) {
//       return "Password can't be empty";
//     }
//     return null;
//   }
// }