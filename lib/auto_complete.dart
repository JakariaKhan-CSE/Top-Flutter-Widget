import 'package:flutter/material.dart';
class AutoCompleteWidgetTest extends StatelessWidget {
   AutoCompleteWidgetTest({super.key});

  static List<String> listItem =[
    "Apple",
    "banana",
    "mango",
    "jackfruit",
    "watermelon"
  ];

  @override
  Widget build(BuildContext context) {
    return Autocomplete(optionsBuilder: (textEditingValue) {
      if(textEditingValue.text == '')
        {
          return Iterable<String>.empty();
        }
      
      return listItem.where((element) => element.contains(textEditingValue.text.toLowerCase()));


    },
    onSelected: (String item)
      {
        print('This $item is selected');
      },
    );
  }
}
