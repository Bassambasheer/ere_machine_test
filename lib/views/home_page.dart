import 'package:ere_business_solutions/views/cart_page.dart';
import 'package:ere_business_solutions/widgets/ItemCard.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (ctx) => CartScreen()));
              },
              icon: const Icon(Icons.shopping_bag))
        ],
      ),
      body: Column(children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              width: size.width,
              height: size.height / 3,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://www.talech.com/blog/wp-content/uploads/2020/01/shutterstock_135621509.jpg"),
                      fit: BoxFit.fill)),
            ),
            Container(
              width: size.width,
              height: size.height / 10,
              color: Colors.green.withOpacity(0.7),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text(
                          "Meat & Fish",
                          style: TextStyle(fontSize: 23, color: Colors.white),
                        ),
                        Text("⭐⭐⭐⭐")
                      ],
                    ),
                    const Text("30 minutes",
                        style: TextStyle(fontSize: 18, color: Colors.white))
                  ],
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Icon(Icons.keyboard_arrow_left_rounded),
              Container(
                width: size.width * 0.8,
                height: 45,
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const ChickenText(),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.shade700,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Padding(
                          padding: EdgeInsets.all(15),
                          child: ChickenText(),
                        )),
                    const ChickenText()
                  ],
                ),
              ),
              const Icon(Icons.keyboard_arrow_right_rounded),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) => ItemCard(),
          ),
        )
      ]),
    );
  }
}

class ChickenText extends StatelessWidget {
  const ChickenText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Fresh Chicken",
      style: TextStyle(
          fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold),
    );
  }
}
