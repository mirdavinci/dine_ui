import 'package:flutter/material.dart';

class BookCustom extends StatefulWidget {
  const BookCustom({Key? key}) : super(key: key);

  @override
  _BookCustomState createState() => _BookCustomState();
}

class _BookCustomState extends State<BookCustom> {
  bool isSelected1 = false;
  bool isSelected2 = false;
  bool isSelected3 = false;
  bool isSelected4 = false;
  bool isSelected5 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 300),
      height: 400,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(onPressed: () {}, child: const Text('Overview')),
              TextButton(onPressed: () {}, child: const Text('Menu')),
              TextButton(onPressed: () {}, child: const Text('Reviews')),
            ],
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(right: 150),
                child: const Text(
                  "Double Tree By Hilton",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 1,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(right: 200),
                child: const Text(
                  "Centrum, International",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                  ),
                  maxLines: 1,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.only(right: 200),
                  child: const Text(
                    "Show me price based on:",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                    ),
                    maxLines: 1,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 50,
                width: 70,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: isSelected1 ? Colors.pinkAccent : Colors.white),
                  child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          isSelected1 = !isSelected1;
                        });
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                      ),
                      child: Text(
                        '35%',
                        style: TextStyle(
                            color:
                                isSelected1 ? Colors.white : Colors.pinkAccent),
                      )),
                ),
              ),
              SizedBox(
                height: 50,
                width: 70,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: isSelected2 ? Colors.pinkAccent : Colors.white),
                  child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          isSelected2 = !isSelected2;
                        });
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                      ),
                      child: Text(
                        '40%',
                        style: TextStyle(
                            color:
                                isSelected2 ? Colors.white : Colors.pinkAccent),
                      )),
                ),
              ),
              SizedBox(
                height: 50,
                width: 70,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: isSelected3 ? Colors.pinkAccent : Colors.white),
                  child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          isSelected3 = !isSelected3;
                        });
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                      ),
                      child: Text(
                        '50%',
                        style: TextStyle(
                            color:
                                isSelected3 ? Colors.white : Colors.pinkAccent),
                      )),
                ),
              ),
              SizedBox(
                height: 50,
                width: 70,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: isSelected4 ? Colors.pinkAccent : Colors.white),
                  child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          isSelected4 = !isSelected4;
                        });
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                      ),
                      child: Text(
                        '55%',
                        style: TextStyle(
                            color:
                                isSelected4 ? Colors.white : Colors.pinkAccent),
                      )),
                ),
              ),
              SizedBox(
                height: 50,
                width: 70,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: isSelected5 ? Colors.pinkAccent : Colors.white),
                  child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          isSelected5 = !isSelected5;
                        });
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                      ),
                      child: Text(
                        '70%',
                        style: TextStyle(
                            color:
                                isSelected5 ? Colors.white : Colors.pinkAccent),
                      )),
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(top: 10),
            color: Colors.white,
            height: 303,
            child: ListView.builder(itemBuilder: (ctx, index) {
              return Container(
                margin: const EdgeInsets.only(top: 20),
                 height: 105,
                width: double.infinity,
                child: Row(
                  children: [
                    Container(
                      child: Image.asset('assets/pizza.png'),
                      padding: EdgeInsets.only(left: 5),
                    ),
                    Column(
                      children: [
                        Container(
                          child: Text(
                            'Eggs Benny',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          padding: EdgeInsets.only(right: 130, top: 5),
                          margin: EdgeInsets.only(left: 5),
                        ),
                        Container(
                          child: Text(
                            'english muffin, poached eggs, \n hollandaise with liver ham \n and black truffle or \n dutch smoked salmon',
                            style: TextStyle(
                                color: Colors.grey.shade400, fontSize: 12),
                          ),
                          padding: EdgeInsets.only(top: 5, right: 50),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          child: const Text(
                            '15.90 €',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                             ),
                          ),
                          margin: const EdgeInsets.only(top: 15,right: 2),
                           height: 20,
                          width: 50,
                        ),
                        Container(
                          child: const Text(
                            '29.90 €',
                            style: TextStyle(
                              fontSize: 14,
                              decoration: TextDecoration.lineThrough,
                                decorationColor: Colors.red,
                                decorationStyle: TextDecorationStyle.solid,
                                color: Colors.grey
                            ),
                          ),
                          // padding: EdgeInsets.only(top: 15),
                          margin: const EdgeInsets.only(top: 10, left: 5),
                           height: 20,
                        )
                      ],
                    ),
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
