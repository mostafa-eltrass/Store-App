class productModel {
  final int id ;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image ;
  final RatingModel rating ;
  productModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating
  });

factory productModel.fromJson(jsonData){

  return productModel(
      id:   jsonData['id'],
      title: jsonData['tittle'],
      price: jsonData['price'],
      description: jsonData['description'],
      category: jsonData['category'],
      image: jsonData['image'],
      rating : RatingModel.fromJson(jsonData ['rating'])
  );

}
}
class RatingModel {
  final double rate;
  final int count ;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromJson(jsonData){
    return RatingModel(
        rate: jsonData['rate'],
        count: jsonData['count']);
  }
}