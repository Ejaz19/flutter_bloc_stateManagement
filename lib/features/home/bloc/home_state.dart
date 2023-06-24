part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

abstract class HomeActionState extends HomeState{}

class HomeInitial extends HomeState {}

class HomeLoadedSuccessState extends HomeState{
  final List<ProductDataModel> products;

  HomeLoadedSuccessState({ 
    required this.products
    });

}

class HomeLoadingState extends HomeState{}

class HomeErrorState extends HomeState{}

class HomeNavigateToWishListPageActionState extends HomeActionState{}
class HomeNavigateToCartPageActionState extends HomeActionState{}

class HomeProductItemWishListedActionState extends HomeActionState{}
class HomeProductItemCartActionState extends HomeActionState{}