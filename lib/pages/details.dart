import 'package:flutter/material.dart';
import 'package:ecommerce/widgets/widget_support.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.black,
              ),
            ),
            Image.asset(
              "images/salad2.png",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              fit: BoxFit.fill,
            ),
            SizedBox(height: 10),

            Row(
              children: [
                Column(
                  children: [
                    Text("Mediterrian", style: AppWidget.boldTextFieldStyle()),
                    Text(
                      "Chickpea Salad",
                      style: AppWidget.semiBoldTextFieldStyle(),
                    ),
                  ],
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (a < 1) return;
                      a -= 1;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(Icons.remove, color: Colors.white),
                  ),
                ),

                SizedBox(width: 20),
                Text('$a', style: AppWidget.boldTextFieldStyle()),
                SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      a += 1;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(Icons.add, color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla condimentum tortor ac sapien aliquet, nec pharetra justo interdum. Curabitur ut augue id felis tincidunt consectetur. Suspendisse potenti. Sed id nisl sed purus consequat egestas a in lorem. Vestibulum ac purus sed arcu fermentum ultrices.',
              maxLines: 3,
              style: AppWidget.LightTextFieldStyle(),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Text("Delivery Time", style: AppWidget.LightTextFieldStyle()),
                SizedBox(width: 25),
                Icon(Icons.alarm, color: Colors.black54),
                SizedBox(height: 5),
                Text("30 mins", style: AppWidget.boldTextFieldStyle()),
              ],
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: 40, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total Price",
                        style: AppWidget.boldTextFieldStyle(),
                      ),
                      Text('\$28', style: AppWidget.HeadLineFieldStyle()),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Add To Cart",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Poppoins',
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
