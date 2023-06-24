class GroceryList{
  static List<Map<String, dynamic>> groceryList = [
    {
      'id': '1',
      'name': 'Apples',
      'description': 'Fresh and juicy apples',
      'price': 2.99,
      'image': 'https://5.imimg.com/data5/AK/RA/MY-68428614/apple.jpg',
    },
    {
      'id': '2',
      'name': 'Bananas',
      'description': 'Ripe and delicious bananas',
      'price': 1.99,
      'image': 'https://m.media-amazon.com/images/I/51ebZJ+DR4L._AC_UF1000,1000_QL80_.jpg',
    },
    {
      'id': '3',
      'name': 'Milk',
      'description': 'Nutritious milk',
      'price': 3.49,
      'image': 'https://images.healthshots.com/healthshots/en/uploads/2023/01/06161102/skimmed-milk-1600x900.jpg',
    },
    {
      'id': '4',
      'name': 'Bread',
      'description': 'Freshly baked bread',
     'price': 2.49,
      'image': 'https://www.lovefoodhatewaste.com/sites/default/files/styles/open_graph_image/public/2022-07/Bread.jpg?h=858d4905&itok=WdvnWV7A',
    },
  ];
/*
  // Accessing and printing the grocery list
  for (var grocery in groceryList) {
    int id = grocery['id'];
    String name = grocery['name'];
    String description = grocery['description'];
    int quantity = grocery['quantity'];
    double price = grocery['price'];
    String image = grocery['image'];

    print('ID: $id');
    print('Name: $name');
    print('Description: $description');
    print('Quantity: $quantity');
    print('Price: \$${price.toStringAsFixed(2)}');
    print('Image: $image');
    print('');
  }
}
*/
}