class Products{
  String id;
  String title;
  String cat_id;
  String description;
  String price;
  String image;
  String random;

  Products({this.id,this.title,this.cat_id,this.description,this.price,this.image,this.random});

  factory Products.fromJson(Map<String, dynamic> json) {
    return new Products(
      id: json['id'] as String,
      title: json['title'] as String,
      cat_id: json['cat_id'] as String,
      description: json['description'] as String,
      price: json['price'] as String,
      image: json['image'] as String,
      random: json['random'] as String,
    );
  }
}