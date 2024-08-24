
sealed class RegisterState {}

final class RegisterInitial extends RegisterState {}
final class RegisterLoadingState extends RegisterState {}
final class RegisterSuccessState extends RegisterState {}
final class RegisterErrorState extends RegisterState {}
