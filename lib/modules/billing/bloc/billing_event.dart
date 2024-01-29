part of 'billing_bloc.dart';

abstract class BillingEvent extends Equatable {
  const BillingEvent();

  @override
  List<Object> get props => [];
}

class AddItemInBillEvent extends BillingEvent {
  final Item item;
  final int qty;
  const AddItemInBillEvent({required this.item, required this.qty});
}

class ReduceItemInBillEvent extends BillingEvent {
  final Item item;
  final int qty;
  const ReduceItemInBillEvent({required this.item, required this.qty});
}

class CreateBillEvent extends BillingEvent {
  const CreateBillEvent();
}

class ClearBillEvent extends BillingEvent {
  const ClearBillEvent();
}
