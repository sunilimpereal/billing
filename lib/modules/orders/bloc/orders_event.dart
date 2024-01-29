part of 'orders_bloc.dart';

class OrdersEvent extends Equatable {
  const OrdersEvent();

  @override
  List<Object> get props => [];
}

class AddBillEvent extends OrdersEvent {
  final Order order;
  const AddBillEvent({required this.order});
}
