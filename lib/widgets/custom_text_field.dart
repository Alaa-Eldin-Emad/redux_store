import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({this.inputType,this.onChanged,this.labelText,super.key});
  final Function(String)?onChanged;
  final String? labelText;
  final TextInputType? inputType;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(style: const TextStyle(
                                              color: Colors.amber),
                                              onChanged: onChanged,
                                          decoration: InputDecoration(
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                      color: Colors.amber),
                                                  borderRadius:
                                                      BorderRadius.circular(25)),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                      width: 2,
                                                      color: Colors.amber),
                                                  borderRadius:
                                                      BorderRadius.circular(10)),
                                              fillColor: Colors.white,
                                              filled: true,
                                              errorBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                    width: 2,
                                                    color: Color(0xFFB71C1C)),
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                      borderSide:
                                                          const BorderSide(
                                                              width: 2,
                                                              color: Color(
                                                                  0xFFB71C1C)),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                              prefixIcon: const Icon(Icons.person,
                                                  color: Colors.amber),
                                              labelText: labelText,
                                              labelStyle: const TextStyle(
                                                  color: Colors.amber,
                                                  fontSize: 17)),
                                        ),
    );
  }
}