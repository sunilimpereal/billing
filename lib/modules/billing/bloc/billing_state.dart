part of 'billing_bloc.dart';

class BillingState {
  List<BillItem> billItems;
  final String email;

  final String password;
  final bool rememberMe;

  BillingState({
    this.billItems = const [],
    this.email = "",
    this.password = "",
    this.rememberMe = false,
  });
  BillingState copyWith({
    List<BillItem>? billItems,
    String? email,
    String? password,
    bool? rememberMe,
    BillingState? billingState,
  }) {
    if (billingState != null) {
      return BillingState(
        billItems: billingState.billItems,
        email: billingState.email,
        rememberMe: billingState.rememberMe,
        password: billingState.password,
      );
    }
    return BillingState(
      billItems: billItems ?? this.billItems,
      email: email ?? this.email,
      password: password ?? this.password,
      rememberMe: rememberMe ?? this.rememberMe,
    );
  }
}

class LoginInitial extends BillingState {}

class LoginFailed extends BillingState {}

class LoginSuccess extends BillingState {
  LoginSuccess();
}

class LoginRoleFailed extends BillingState {}
