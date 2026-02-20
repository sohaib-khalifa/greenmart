// class ProductModel {
//   final String id;
//   final String image;
//   final String name;
//   final String quantityForPrice;
//   final double price;

//   ProductModel({
//     required this.id,
//     required this.image,
//     required this.name,
//     required this.quantityForPrice,
//     required this.price,
//   });
// }
class ProductModel {
  final String id;
  final String image;
  final String name;
  final String quantityForPrice;
  final double price;
  final String description;

  ProductModel({
    required this.id,
    required this.image,
    required this.name,
    required this.quantityForPrice,
    required this.price,
    required this.description,
  });
}