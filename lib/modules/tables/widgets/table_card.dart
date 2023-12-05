import 'package:billing/componenets/app_button.dart';
import 'package:billing/constants/ui/image_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';

class TableCard extends StatefulWidget {
  final String tableName;
  final String hall;
  final int itemsCount;
  final int chairsCount;

  const TableCard({
    super.key,
    required this.tableName,
    required this.hall,
    required this.itemsCount,
    required this.chairsCount,
  });

  @override
  State<TableCard> createState() => _TableCardState();
}

class _TableCardState extends State<TableCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 180,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.tableName,
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        widget.hall,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  chairList()
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "${widget.itemsCount} Items",
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    "\$ 3000",
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  AppButton(child: const Text("Add"), onPressed: () {})
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget chairList() {
    // List<int> chairs = [0, 1, 2, 3, 4];
    List<Widget> chairs = [];
    for (int i = 0; i < 5; i++) {
      chairs.add(
        SvgPicture.asset(
          AppImages.chairIcon,
          color: i < widget.chairsCount ? Colors.green : Colors.grey,
          // semanticsLabel: 'Acme Logo',
        ),
      );
    }

    return Row(
        children: chairs
            .map((e) => Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(width: 30, height: 40, child: e),
                ))
            .toList());
  }
}
