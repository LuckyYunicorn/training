sealed class AuthState {}   // sealed class

class LoggedIn extends AuthState {
  final String userName;
  LoggedIn(this.userName);
}

class LoggedOut extends AuthState {}

class Loading extends AuthState {}
