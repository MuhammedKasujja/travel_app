import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:travel_app/models/app.user.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    on<Login>((event, emit) async {
      try {
        final User user = (await _auth.signInWithEmailAndPassword(
          email: event.email,
          password: event.password,
        ))
            .user;
        emit(Authenticated(AppUser(email: user.email, id: user.uid)));
      } catch (e) {
        print({'Error': e.toString()});
        emit(AuthError(message: e.toString()));
      }
    });

    on<Register>((event, emit) async {
      try {
        final User user = (await _auth.createUserWithEmailAndPassword(
          email: event.email,
          password: event.password,
        ))
            .user;
        emit(Authenticated(AppUser(email: user.email, id: user.uid)));
      } catch (e) {
        print({'Error': e.toString()});
        emit(AuthError(message: e.toString()));
      }
    });

    on<Logout>((event, emit) {
      emit(AuthInitial());
    });
  }
}
