import 'package:billing/constants/ui/image_constants.dart';
import 'package:flutter/material.dart';

class WaiterCard extends StatefulWidget {
  final String name;
  const WaiterCard({super.key, required this.name});

  @override
  State<WaiterCard> createState() => _WaiterCardState();
}

class _WaiterCardState extends State<WaiterCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 80,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  // color: Colors.red,
                  image: const DecorationImage(
                      image: AssetImage(AppImages.userPlaceholder)),
                  borderRadius: BorderRadius.circular(150),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                widget.name,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              )
            ],
          ),
        ),
      ),
    );
  }
}
