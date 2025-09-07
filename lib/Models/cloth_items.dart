class ClothItem {
  final String name;
  final String imgUrl;
  final double price;
  final bool isFavourite;

  ClothItem({
    required this.name,
    required this.imgUrl,
    required this.price,
    this.isFavourite = false,
  });

  ClothItem copyWith({
    String? name,
    String? imgUrl,
    double? price,
    bool? isFavourite,
  }) {
    return ClothItem(
      name: name ?? this.name,
      imgUrl: imgUrl ?? this.imgUrl,
      price: price ?? this.price,
      isFavourite: isFavourite ?? this.isFavourite,
    );
  }
}

List<ClothItem> clothList = [
  ClothItem(
    name: 'White T-shirt',
    imgUrl: 'assets/images/White.jpg',
    price: 5,
  ),
  ClothItem(
    name: 'Black T-shirt',
    imgUrl: 'assets/images/Black.jpg',
    price: 10,
  ),
  ClothItem(
    name: 'Blue T-shirt',
    imgUrl: 'assets/images/Blue.jpeg',
    price: 8,
  ),
  ClothItem(
    name: 'Green T-shirt',
    imgUrl: 'assets/images/Green.jpeg',
    price: 7,
  ),
  ClothItem(
    name: 'White T-shirt',
    imgUrl: 'assets/images/White.jpg',
    price: 5,
  ),
  ClothItem(
    name: 'Black T-shirt',
    imgUrl: 'assets/images/Black.jpg',
    price: 10,
  ),
  ClothItem(
    name: 'Blue T-shirt',
    imgUrl: 'assets/images/Blue.jpeg',
    price: 8,
  ),
  ClothItem(
    name: 'Green T-shirt',
    imgUrl: 'assets/images/Green.jpeg',
    price: 7,
  ),
];
