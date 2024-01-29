part of 'billing_bloc.dart';

class BillingState {
  List<BillItem> billItems;

  BillingState({
    this.billItems = const [],
  });
  BillingState copyWith({
    List<BillItem>? billItems,
    BillingState? billingState,
  }) {
    if (billingState != null) {
      return BillingState(
        billItems: billingState.billItems,
      );
    }
    return BillingState(
      billItems: billItems ?? this.billItems,
    );
  }
}

class LoginInitial extends BillingState {}

class LoginFailed extends BillingState {}

class LoginSuccess extends BillingState {
  LoginSuccess();
}

class LoginRoleFailed extends BillingState {}
