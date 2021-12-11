class Item {
  String itemName;
  String itemDesc;
  String itemImage;
  int itemPrice;

  Item({
    required this.itemName,
    required this.itemDesc,
    required this.itemImage,
    required this.itemPrice,
  });

}

class ItemModel{
  static final item = [
    Item(
      itemName: 'Iphone 13',
      itemDesc: 'This is Iphone 13',
      itemImage: 'https://images.unsplash.com/photo-1638038772924-ef79cce2426d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aXBob25lJTIwMTN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
      itemPrice: 990
    )
  ];
}