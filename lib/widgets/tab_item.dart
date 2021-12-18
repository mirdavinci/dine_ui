import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
     const TabItem({Key? key, this.icon, this.isSelected = false, this.onTap ,
      })
      : super(key: key);

  final IconData? icon;
  final bool isSelected ;

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Tab(
              icon: Icon(icon , color: isSelected ? Colors.pinkAccent : Colors.grey,),
            ),
          ],
        ),
      ),
    );
  }
}
