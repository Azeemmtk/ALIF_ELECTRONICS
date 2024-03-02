import 'package:flutter/cupertino.dart';

class custom_repair_containr extends StatelessWidget {
  const custom_repair_containr({
    super.key,
    required this.image,
    required this.text,
    required this.price,
  });
  final image;
  final text;
  final price;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 140,
        width: 130,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 90,
                width: 130,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    image,
                    fit: BoxFit.fill,
                  ),
                )),
            Text(text),
            Row(
              children: [
                Text("₹"),
                Text(price),
              ],
            )
          ],
        ),
      ),

    );
  }
}
