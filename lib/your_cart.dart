import 'package:flutter/material.dart';
import 'package:sushi_food_app_ui/individual_cart_item.dart';

class YourCart extends StatefulWidget {
  const YourCart({Key? key}) : super(key: key);

  @override
  State<YourCart> createState() => _YourCartState();
}

class _YourCartState extends State<YourCart> {
  List cartItem=[
    ["Salmon Sushi","lib/icons/sushi1.png",25.00],
    ["Ichiraku Ramen","lib/icons/ramen1.png",20.00],
    ["Sashimi Sushi","lib/icons/sushi3.png",30.00]
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: Column(
          children: [
            //app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon: Icon(Icons.arrow_back,size: 30,)),
                  ),

                  Text("Your cart food",style: TextStyle(fontSize: 22,fontFamily: "Times New Roman", fontWeight: FontWeight.bold),),

                  Container(
                    height: 50,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Image.asset("lib/icons/menu1.png")
                  )
                ],
              ),
            ),

            //list
            Container(
              height: 380,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                  itemCount: cartItem.length,
                  itemBuilder: (context,index){
                return IndividualCarItem(
                  itemName: cartItem[index][0],
                  icon: cartItem[index][1],
                  price: cartItem[index][2],
                );
              })
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                padding: EdgeInsets.all(12),
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.grey.shade50,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.credit_card_rounded),
                        SizedBox(width: 10,),
                        Text("Promo code",style: TextStyle(color: Colors.grey.shade700,fontSize: 20),)
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text("Apply",style: TextStyle(fontSize: 23,color: Colors.grey.shade100),),
                    )
                  ],
                ),
              ),
            ),

            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Item total:",style: TextStyle(fontSize: 19,color: Colors.grey.shade700),),
                      SizedBox(height: 10,),
                      Text("\$75.00",style: TextStyle(fontSize: 19,color: Colors.grey.shade700),)
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Delivery:",style: TextStyle(fontSize: 19,color: Colors.grey.shade700),),
                      SizedBox(height: 10,),
                      Text("free",style: TextStyle(fontSize: 19,color: Colors.grey.shade700),)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Divider(thickness: 2,),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total:",style: TextStyle(fontSize: 23,color: Colors.black87,fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text("\$75.00",style: TextStyle(fontSize: 23,color: Colors.black87,fontWeight: FontWeight.bold),)
                    ],
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Center(child: Text("Make payment",style: TextStyle(fontSize: 25,color: Colors.grey.shade200),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
