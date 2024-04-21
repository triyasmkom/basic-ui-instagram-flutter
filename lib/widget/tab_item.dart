import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  const TabItem({super.key, required this.icon, required this.active});

  final Icon icon;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                  color: active == true ? Colors.black : Colors.white),
            ),
          ),
          child: icon),
    );
  }
}
