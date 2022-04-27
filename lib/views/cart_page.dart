import 'package:ere_business_solutions/widgets/CartButton.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 5,
                        color: Colors.black,
                        offset: Offset(1, 3))
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://img.freepik.com/free-photo/raw-chicken-carcass-cutting-board-isolated-white_109285-1133.jpg?w=2000"),
                              fit: BoxFit.fill)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Text(
                            "Fresh Chicken",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "\u20B9 150",
                            style: TextStyle(fontSize: 15, color: Colors.green),
                          ),
                          CartButton()
                        ],
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.red,
                        size: 40,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: ListTile(
              leading: const Icon(Icons.percent_rounded),
              title: const Text("Apply Promo Code"),
              trailing: IconButton(
                icon: const Icon(Icons.keyboard_arrow_right_rounded),
                onPressed: () {
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: RateNTitle(
                        title: "Delivery Charges",
                        amount: "\u20B91200",
                        style: TextStyle(),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: RateNTitle(
                          title: "Taxes Charges",
                          amount: "\u20B91200",
                          style: TextStyle()),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: RateNTitle(
                        title: "Total Amount",
                        amount: "\u20B91200",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: ElevatedButton(
              child: const Text("Place Order"),
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

class RateNTitle extends StatelessWidget {
  const RateNTitle({
    Key? key,
    required this.title,
    required this.amount,
    required this.style,
  }) : super(key: key);
  final String title;
  final String amount;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
        ),
        Text(
          amount,
          style: style,
        )
      ],
    );
  }
}
