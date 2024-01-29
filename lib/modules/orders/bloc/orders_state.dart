part of 'orders_bloc.dart';

class OrdersState {
  final List<Order> orders;

  const OrdersState({
    this.orders = const [],
  });

  OrdersState copyWith({
    List<Order>? orders1,
    OrdersState? ordersState,
  }) {
    if (ordersState != null) {
      return OrdersState(
        orders: ordersState.orders,
      );
    }
    return OrdersState(
      orders: orders1 ?? orders,
    );
  }
}

class OrdersInitial extends OrdersState {}
