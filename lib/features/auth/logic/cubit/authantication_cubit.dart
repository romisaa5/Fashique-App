import 'package:bloc/bloc.dart';
part 'authantication_state.dart';

class AuthanticationCubit extends Cubit<AuthanticationState> {
  AuthanticationCubit() : super(AuthanticationInitial());
}
