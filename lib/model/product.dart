class Product {
  final int id;
  final String productName;
  final String productImage;
  final double price;
  bool favourite;
  bool addCart;

  Product(
    this.id,
    this.productName,
    this.productImage,
    this.price,
    this.favourite,
    this.addCart,
  );

  void setFavorites() => favourite = !favourite;
  void setCart() => addCart = !addCart;
}
