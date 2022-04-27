import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: size.width,
        height: 150,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.grey,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            boxShadow: const [
              BoxShadow(
                  blurRadius: 5, color: Colors.black, offset: Offset(1, 3))
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
                          overflow: TextOverflow.fade,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "1Kg",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      "\u20B9 150",
                      style: TextStyle(fontSize: 15, color: Colors.green),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                child: const Text("Add to Cart"),
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
