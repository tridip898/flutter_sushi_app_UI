import 'package:flutter/material.dart';
import 'package:sushi_food_app_ui/item_detail.dart';

class FoodList extends StatelessWidget {
  final String itemName;
  final String icon;
  final double price;
  final double rating;

  const FoodList({Key? key, required this.itemName, required this.icon, required this.price, required this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.star,color: Colors.orange,),
                  Text(' '+rating.toString(), style: TextStyle(fontSize: 18),)
                ],
              ),
              SizedBox(height: 10,),
              Container(
                height: 70,
                child: Image.asset(icon),
              ),
              SizedBox(height: 12,),
              Text(itemName,style: TextStyle(fontSize: 22,fontFamily: "Times New Roman"),),
              SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('\$'+price.toString() ,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(30)
                    ),
                      child: Icon(Icons.shopping_cart_outlined,color:Colors.grey.shade200, size: 25,))
                ],
              )
            ],
          ),
        ),
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Details()));
        },
      ),
    );
  }
}
