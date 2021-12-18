import 'package:dine_ui/icons/bottom_bar_icons.dart';
import 'package:dine_ui/main_page.dart';
import 'package:dine_ui/widgets/tab_item.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedPosition = 0;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      shape: const CircularNotchedRectangle(),
      // elevation: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TabItem(
            icon: BottomBarIcons.book_saved,
            isSelected: selectedPosition == 0,
            onTap: () {
              setState(() {
                selectedPosition = 0;
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const MainPage()));
              });
            },
          ),
          TabItem(
               icon: BottomBarIcons.bell,
              isSelected: selectedPosition == 1,
              onTap: () {
                setState(() {
                  // print("tapped");
                  selectedPosition = 1;
                });
              }),

          TabItem(
                icon: Icons.person,
              isSelected: selectedPosition == 3,
              onTap: () {
                setState(() {
                  selectedPosition = 3;
                });
              }),
        ],
      ),
    );
  }
}
