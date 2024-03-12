import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:user_repository/source/models/user.dart';
import 'package:user_repository/source/user_repo.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpBlocEvent, SignUpBlocState> {
	final UserRepository _userRepository;

  SignUpBloc({
		required UserRepository userRepository
	}) : _userRepository = userRepository,
		super(SignUpBlocInitial()) {
    on<SignUpRequired>((event, emit) async {
			emit(SignUpProcess());
			try {
        MyUserModel user = await _userRepository.signUp(event.user, event.password);
				await _userRepository.setUserData(user);
				emit(SignUpSuccess());
      } catch (e) {
				emit(SignUpFailure());
      }
    });
  }
}
