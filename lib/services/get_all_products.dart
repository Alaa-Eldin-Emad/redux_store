
import '../API/api.dart';
import '../models/products_model.dart';

class AllProductsService{
  Future <List<ProductsModel>> getAllProducts ()async{
    List<dynamic> data = await API().getData(url: 'https://fakestoreapi.com/products');
    List<ProductsModel> productList =[];
    for(int i=0; i<data.length; i++){
      productList.add(ProductsModel.fromJson(data[i]));
    }
    return productList;
  }
  
}