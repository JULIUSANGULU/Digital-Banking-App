part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  @override
  List<Object> get props => [];
}

// Event for signing up a user
class AuthSignUpRequested extends AuthEvent {
  final String name;
  final String username;
  final String email;
  final String password;
  final String accountType; // New field

  AuthSignUpRequested({
    required this.name,
    required this.username,
    required this.email,
    required this.password,
    required this.accountType, // Accepts Personal or Business
  });
}
