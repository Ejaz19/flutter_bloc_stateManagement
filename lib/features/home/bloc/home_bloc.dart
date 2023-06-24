import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_tut/data/cart_items.dart';
import 'package:flutter_bloc_tut/data/grocery_list.dart';
import 'package:flutter_bloc_tut/data/wishlist_items.dart';
import 'package:meta/meta.dart';

import '../models/home_product_data_model.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeInitialEvent>(homeInitialEvent);
    on<HomeWishListButtonNavigateClicked>(homeWishListButtonNavigateClicked);
    on<HomeCartButtonNavigateClicked>(homeCartButtonNavigateClicked);
    on<HomeProductWishListButtonClicked>(homeProductWishListButtonClicked);
    on<HomeProductCartButtonClicked>(homeProductCartButtonClicked);
  }

  FutureOr<void> homeInitialEvent(
      HomeInitialEvent event, Emitter<HomeState> emit) async {
    emit(HomeLoadingState());
    await Future.delayed(Duration(seconds: 3));
          

    emit(HomeLoadedSuccessState(
      
            products: GroceryList.groceryList.map((e) => ProductDataModel(
               

                id: e['id'],
                name: e['name'],
                description: e['description'],
                price: e['price'],
                image: e['image'],
               
               ))
                .toList()));
  }

  FutureOr<void> homeWishListButtonNavigateClicked(
      HomeWishListButtonNavigateClicked event, Emitter<HomeState> emit) {
   // print('Wishlist product Navigate Clicked');
    emit(HomeNavigateToWishListPageActionState());
  }

  FutureOr<void> homeCartButtonNavigateClicked(
      HomeCartButtonNavigateClicked event, Emitter<HomeState> emit) {
   // print('Cart product Navigate Clicked');
    emit(HomeNavigateToCartPageActionState());
  }

  FutureOr<void> homeProductWishListButtonClicked(
      HomeProductWishListButtonClicked event, Emitter<HomeState> emit) {
   // print('wishlistproduct Clicked');
    wishlistItems.add(event.clickedProduct);
    emit(HomeProductItemWishListedActionState());
  }

  FutureOr<void> homeProductCartButtonClicked(
      HomeProductCartButtonClicked event, Emitter<HomeState> emit) {
   // print('Cart product Clicked');
    cartItems.add(event.clickedProduct);
    emit(HomeProductItemCartActionState());
  }
}
