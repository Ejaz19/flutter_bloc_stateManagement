import 'package:flutter/material.dart';
import 'package:flutter_bloc_tut/features/cart/bloc/cart_bloc.dart';
//import 'package:flutter_bloc_tut/features/home/bloc/home_bloc.dart';

import '../../home/models/home_product_data_model.dart';
//import '../models/home_product_data_model.dart';

class CartTileWidget extends StatelessWidget {
  final ProductDataModel productDataModel;
   final CartBloc cartBloc;
  const CartTileWidget({super.key, required this.productDataModel, required this.cartBloc});

  @override
  Widget build(BuildContext context) {
   
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black),
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(productDataModel.image)),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            productDataModel.name,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(productDataModel.description),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$" + productDataModel.price.toString(),
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        //
                      },
                      icon: Icon(Icons.favorite)),
                  IconButton(
                      onPressed: () {
                        cartBloc.add(CartRemoveFromCartEvent(
                          productDataModel: productDataModel
                        ));
                      },
                      icon: Icon(Icons.shopping_cart)),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
