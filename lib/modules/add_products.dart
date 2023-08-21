import 'package:flutter/material.dart';
import '../services/post_products.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/toast.dart';
import 'home_page.dart';

// ignore: must_be_immutable
class AddingForm extends StatelessWidget {
   AddingForm({super.key,});
  String? productName,descriptionText,imageURL; 
  // ignore: prefer_typing_uninitialized_variables
  var priceNo;
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,appBar: AppBar(leading:const BackButton(color: Colors.amber) ,backgroundColor: Colors.white,elevation: 0,title:const Text("Add New Product",style: TextStyle(color: Colors.amber,fontSize: 20,),),centerTitle: true,),
    body: ListView(
      children: [
        const SizedBox(height: 120,),
      CustomTextField(
        labelText: 'Product Name',
        onChanged: (data) {
          productName=data;
        },
      ),
      CustomTextField(
        inputType: TextInputType.phone,
        labelText: 'Price',
        onChanged: (data) {
          priceNo=data;
        },
      ),
      CustomTextField(
        labelText: 'Description',
        onChanged: (data) {
          descriptionText=data;
        },
      ),
      CustomTextField(
        labelText: 'Image URL',
        onChanged: (data) {
          imageURL=data;
        },
      ),
      const SizedBox(height: 20,),
      CustomButton(text: 'Add',onTap:(){
        try {
  AddProductsService(title: productName??'New Product',description: descriptionText??"", image: imageURL??"No Image", price: priceNo??"No Price");
  Navigator.push(context,MaterialPageRoute(
                                    builder: (context) =>const Home()));
                                    showToast("Added successfully");
} catch (e) {
  // ignore: avoid_print
  print(e.toString());
}
} ,),
    ],),
    );
  }
}