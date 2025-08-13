import 'package:flutter_bloc/flutter_bloc.dart';
import '../../utils/validators.dart';
import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<LoginEvent>(_onLoginEvent);
  }

  Future<void> _onLoginEvent(LoginEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoading());

    // Validate email
    final emailError = Validators.validateEmail(event.email);
    if (emailError != null) {
      emit(AuthFailure(emailError));
      return;
    }

    // Validate password
    final passwordError = Validators.validatePassword(event.password);
    if (passwordError != null) {
      emit(AuthFailure(passwordError));
      return;
    }

    // Simulate API call with 2-second delay
    await Future.delayed(const Duration(seconds: 2));

    // For demo purposes, accept any valid email/password combination
    emit(AuthSuccess());
  }
} 