part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class HomeInitialEvent extends HomeEvent {}

class HomeProductWishListButtonClicked extends HomeEvent {
  final ProductDataModel clickedProduct;

  HomeProductWishListButtonClicked({
    required this.clickedProduct});
}

class HomeProductCartButtonClicked extends HomeEvent {
  final ProductDataModel clickedProduct;

  HomeProductCartButtonClicked({ required this.clickedProduct});
}

class HomeWishListButtonNavigateClicked extends HomeEvent {}

class HomeCartButtonNavigateClicked extends HomeEvent {}
