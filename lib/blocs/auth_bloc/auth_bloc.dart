import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:digital_banking_app/repositories/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;

  AuthBloc({required this.authRepository}) : super(AuthInitial()) {
    on<AuthSignUpRequested>((event, emit) async {
      emit(AuthLoading());
      try {
        final user = await authRepository.signUpWithEmail(
          name: event.name,
          username: event.username,
          email: event.email,
          password: event.password,
          accountType: event.accountType, // Passes the selected account type
        );
        emit(AuthAuthenticated(user: user));
      } catch (e) {
        emit(AuthError(message: e.toString()));
      }
    });
  }
}
