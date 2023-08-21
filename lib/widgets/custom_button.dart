import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
const CustomButton({super.key, this.onTap,required this.text});
final VoidCallback? onTap;
final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(height: 45,
          decoration: BoxDecoration(color: Colors.amber,shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(15)),
          child: Center(child: Text(text,style: const TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),),
      ));
                                          
  }
}