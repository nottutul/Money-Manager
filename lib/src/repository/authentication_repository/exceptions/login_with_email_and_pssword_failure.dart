class LogInWithEmailAndPasswordFailure {
  final String message;

  const LogInWithEmailAndPasswordFailure(
      [this.message = "An Unknown error occured."]);

  factory LogInWithEmailAndPasswordFailure.fromCode(String code) {
    switch (code) {
      case 'weak-password':
        return const LogInWithEmailAndPasswordFailure(
            'Please enter a stronger password');
      case 'invalid-email':
        return const LogInWithEmailAndPasswordFailure('Email is not valid.');
      case 'email-already-in-use':
        return const LogInWithEmailAndPasswordFailure(
            'An account already exists for this email.');
      case 'operation-not-allowed':
        return const LogInWithEmailAndPasswordFailure(
            'Operation is not allowd');
      case 'user-disabled':
        return const LogInWithEmailAndPasswordFailure(
            'This user has been disabled.');
      default:
        return const LogInWithEmailAndPasswordFailure();
    }
  }
}
