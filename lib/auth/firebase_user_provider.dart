import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class HoraireCliniqueFirebaseUser {
  HoraireCliniqueFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

HoraireCliniqueFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<HoraireCliniqueFirebaseUser> horaireCliniqueFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<HoraireCliniqueFirebaseUser>(
            (user) => currentUser = HoraireCliniqueFirebaseUser(user));
