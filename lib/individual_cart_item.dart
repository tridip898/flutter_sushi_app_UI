import 'package:flutter/material.dart';

class IndividualCarItem extends StatelessWidget {
  final String icon;
  final String itemName;
  final double price;
  const IndividualCarItem({Key? key, required this.icon, required this.itemName, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey.shade50,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              height: 80,
              child: Image.asset(icon),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(itemName,style: TextStyle(fontSize: 25,fontFamily: "Times New roman"),),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('\$'+price.toString(),style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                    SizedBox(width: 35,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Row(
                        children: [
                          Text("-",style: TextStyle(fontSize: 30),),
                          SizedBox(width: 15,),
                          Text("1",style: TextStyle(fontSize: 25),),
                          SizedBox(width: 15,),
                          Text("+",style: TextStyle(fontSize: 30),)
                        ],
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
