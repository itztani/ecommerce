import 'package:flutter/material.dart';
import 'package:ecommerce/widgets/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool icecream = false, pizza = false, burger = false, salad = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hello Tanisha", style: AppWidget.boldTextFieldStyle()),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(Icons.shopping_cart, color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text("Delicious Food", style: AppWidget.HeadLineFieldStyle()),
            Text(
              "Discover and Get Great Food",
              style: AppWidget.LightTextFieldStyle(),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(left: 5, right: 10),
              child: showItem(),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(4),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "images/salad2.png",
                              height: 150,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Veggie Taco Hash",
                              style: AppWidget.boldTextFieldStyle(),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              "Fresh And Healthy",
                              style: AppWidget.LightTextFieldStyle(),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              '\$25',
                              style: AppWidget.semiBoldTextFieldStyle(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 15),

                  Container(
                    margin: EdgeInsets.all(4),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "images/salad2.png",
                              height: 150,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Mix Veg Salad",
                              style: AppWidget.boldTextFieldStyle(),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              "Spicy With Onion",
                              style: AppWidget.LightTextFieldStyle(),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              '\$28',
                              style: AppWidget.semiBoldTextFieldStyle(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),

            Container(
              margin: EdgeInsets.only(right: 20),
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "images/salad2.png",
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              'Mediterrisn Chickpea salad',
                              style: AppWidget.boldTextFieldStyle(),
                            ),
                          ),
                          SizedBox(height: 5),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              'Honey Goot Cheese',
                              style: AppWidget.LightTextFieldStyle(),
                            ),
                          ),
                          SizedBox(height: 5),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              '\$28',
                              style: AppWidget.boldTextFieldStyle(),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            icecream = true;
            pizza = false;
            burger = false;
            salad = false;
            setState(() {});
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                color: icecream ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "images/ice-cream.png",
                height: 40,
                width: 40,
                color: icecream ? Colors.white : Colors.black,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),

        GestureDetector(
          onTap: () {
            icecream = false;
            pizza = true;
            burger = false;
            salad = false;
            setState(() {});
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                color: pizza ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "images/pizza.png",
                height: 40,
                width: 40,
                color: pizza ? Colors.white : Colors.black,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),

        GestureDetector(
          onTap: () {
            icecream = false;
            pizza = false;
            burger = false;
            salad = true;
            setState(() {});
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                color: salad ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "images/salad.png",
                height: 40,
                width: 40,
                color: salad ? Colors.white : Colors.black,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),

        GestureDetector(
          onTap: () {
            icecream = false;
            pizza = false;
            burger = true;
            salad = false;
            setState(() {});
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                color: burger ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "images/burger.png",
                height: 40,
                width: 40,
                color: burger ? Colors.white : Colors.black,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
