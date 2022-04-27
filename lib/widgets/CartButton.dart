import 'package:flutter/material.dart';

class CartButton extends StatelessWidget {
  const CartButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        color: Colors.grey.shade400,
      borderRadius: BorderRadius.circular(5)
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const[
     Icon(Icons.remove_circle),
          Padding(
            padding:  EdgeInsets.all(4),
            child: Text("0"),
          ),
          Icon(Icons.add_circle),

        ],
      ),
    );
  }
}