part of 'sign_in_form_bloc.dart';

@freezed 
abstract class SignInFormState with _$SignInFormState {
    factory SignInFormState({
        required EmailAddress emailAddress,
        required Password password,
        required bool isSubmitting,
        required bool showErrorMessages,
        required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
    }) = _SignInFormState;

    factory SignInFormState.initial() => SignInFormState(
        emailAddress: EmailAddress(''),
        password: Password(''),
        isSubmitting: false,
        showErrorMessages: false,
        authFailureOrSuccessOption: none()
    );
}