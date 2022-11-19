import 'package:flutter/material.dart';
import 'package:sushi_food_app_ui/your_cart.dart';

import 'icons/ingredient.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: Container(
            child: Column(
          children: [
            //custom app bar
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(50)),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          size: 30,
                        )),
                  ),
                  Text(
                    "Detail",
                    style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(50)),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.favorite,
                          size: 30,
                          color: Colors.red,
                        )),
                  ),
                ],
              ),
            ),

            Container(
              height: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("lib/icons/sushi1.png"),
                      fit: BoxFit.contain)),
            ),

            SizedBox(
              height: 30,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Salmon Sushi",
                    style: TextStyle(
                        fontSize: 35,
                        fontFamily: "Times New Roman",
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.orange.shade400,
                        size: 30,
                      ),
                      Text(
                        " 4.6",
                        style: TextStyle(
                            fontSize: 22, color: Colors.grey.shade700),
                      )
                    ],
                  )
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),

            //ingredient
            Container(
              height: 50,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                Ingredient(icons: "lib/icons/salmon.png", ingName: "Salmon"),
                Ingredient(icons: "lib/icons/rice.png", ingName: "Rice"),
                Ingredient(
                    icons: "lib/icons/rice-wine.png",
                    ingName: "Rice Wine Vinegar")
              ]),
            ),

            SizedBox(
              height: 25,
            ),
            //price and quantity
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$24.00",
                    style: TextStyle(
                        fontSize: 35,
                        fontFamily: "Times New Roman",
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(left: 20, right: 20, top: 0, bottom: 0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.black38, width: 1)),
                    child: Row(
                      children: [
                        Text(
                          "-",
                          style: TextStyle(fontSize: 40),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text("1", style: TextStyle(fontSize: 30)),
                        SizedBox(
                          width: 20,
                        ),
                        Text("+", style: TextStyle(fontSize: 30))
                      ],
                    ),
                  )
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About Sushi",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Times New Roman"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "To ingredients, the Japanese add the concept of 'season'. And since seafood grows, moving and alive in the sea, it is said that the secret of delicious is freshness.",
                    style: TextStyle(fontSize: 18, color: Colors.grey.shade500),
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Container(
                padding: EdgeInsets.all(26),
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.grey.shade50,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("\$24.00",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                      SizedBox(height: 6,),
                      Text("Total Price",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
                    ],
                  ),
                    
                    Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>YourCart()));
                      }, child: Text("Place Order",style: TextStyle(color: Colors.grey.shade100,fontSize: 20),),)
                    )
                  ],
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
