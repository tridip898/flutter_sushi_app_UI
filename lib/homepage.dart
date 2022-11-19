import 'package:flutter/material.dart';

import 'food_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List foodList=[
    ["Salmon Sushi", "lib/icons/sushi1.png", 25.00, 4.5],
    ["Icirku Ramen", "lib/icons/ramen.png", 22.00, 4.8],
    ["Temaki Sushi", "lib/icons/sushi2.png", 20.00, 4.1],
    ["Sashimi Sushi", "lib/icons/sushi3.png", 30.00, 4.5],
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          child: Padding(
            padding: EdgeInsets.only(bottom: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.home_filled,color: Colors.pinkAccent.shade200,size: 35,)),
                IconButton(onPressed: (){}, icon: Icon(Icons.settings,color: Colors.pinkAccent.shade100,size: 35,)),
                IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline,color: Colors.pinkAccent.shade100,size: 35,)),
                IconButton(onPressed: (){}, icon: Icon(Icons.person_outline,color: Colors.pinkAccent.shade100,size: 35,)),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.grey.shade300,
        body: Column(
          children: [
            //custom app bar
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 45,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(20)),
                    child: Image.asset("lib/icons/menu.png"),
                  ),
                  Column(
                    children: [
                      Text(
                        "Location",
                        style: TextStyle(
                            color: Colors.grey.shade600, fontSize: 18),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.pink,
                          ),
                          Text(
                            "Singapore",
                            style: TextStyle(
                                fontSize: 23, fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(20)),
                    child: Icon(
                      Icons.notification_add_outlined,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),

            //card
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                padding: EdgeInsets.all(20),
                height: 180,
                decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Get a special discount",
                          style: TextStyle(
                              color: Colors.grey.shade200, fontSize: 20),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Up to 25%",
                          style: TextStyle(
                              color: Colors.grey.shade200,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.pinkAccent.shade200,
                            ),
                            child: Text(
                              "Claim voucher",
                              style: TextStyle(fontSize: 17),
                            )
                        ),
                      ],
                    ),
                    Container(
                      height: 125,
                      child: Image.asset("lib/icons/ramen1.png"),
                    )
                  ],
                ),
              ),
            ),

            //search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.shade400,
                  border: Border.all(color: Colors.grey.shade500,width: 2)
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search,size: 40,),
                    hintText: "Search your food ....",
                    hintStyle: TextStyle(fontSize: 18,color: Colors.grey.shade700)
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),

            //text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Popular Food",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  Text("View all",style: TextStyle(fontSize: 18,color: Colors.grey.shade700),)
                ],
              ),
            ),

            //grid
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                    itemCount: foodList.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1/1.25), itemBuilder: (context,index){
                  return FoodList(
                    itemName: foodList[index][0],
                    icon: foodList[index][1],
                    price: foodList[index][2],
                    rating: foodList[index][3],
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
