
import '../API/api.dart';
import '../models/products_model.dart';

class AddProductsService{
  final String title;
  final String price;
  final String description;
  final String image;
  final String? category;
  AddProductsService({required this.title, this.category,required this.description,required this.image,required this.price,});

  Future<ProductsModel> postProducts() async{
    Map<String,dynamic> data = await API().postData(url: 'https://fakestoreapi.com/products', body: {
      'title' : title,
      'price' : price,
      'category' : category,
      'description' : description,
      'image' :image,
    }, token: '',);
    return ProductsModel.fromJson(data);
  }
}