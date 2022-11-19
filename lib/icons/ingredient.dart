import 'package:flutter/material.dart';

class Ingredient extends StatelessWidget {
  final String icons;
  final String ingName;
  const Ingredient({Key? key, required this.icons, required this.ingName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(12)
        ),
        child: Row(
          children: [
            Image.asset(icons,height: 50,),
            SizedBox(width: 10,),
            Text(ingName,style: TextStyle(fontSize: 20),)
          ],
        ),
      ),
    );
  }
}
