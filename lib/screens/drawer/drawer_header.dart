import 'package:flutter/material.dart';

class MyDrawerHeader extends StatefulWidget {
  MyDrawerHeader({Key? key}) : super(key: key);

  @override
  State<MyDrawerHeader> createState() => _MyDrawerHeaderState();
}

class _MyDrawerHeaderState extends State<MyDrawerHeader> {
  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: BoxDecoration(color: Colors.blue),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Bazar",
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
              SizedBox(
                height: 24,
              ),
              select()
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Osh',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Row(
                children: [
                  Icon(Icons.cloud_queue_sharp, color: Colors.white),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    '+12.0',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ],
          ),
          const Divider(
            thickness: 1.1,
            color: Colors.white,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Reta(Icons.monetization_on_outlined, '86'),
              Reta(Icons.euro_symbol, '85'),
              Reta(Icons.currency_ruble, '1.25')
            ],
          )
        ],
      ),
    );
  }

  List<bool> _isSelected = [true, false];

  Widget select() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(30)),
      width: 190,
      height: 30,
      child: ToggleButtons(
        borderColor: Colors.transparent,
        selectedBorderColor: Colors.transparent,
        children: [
          Container(
            child: Text(
              'Киргизский',
              style: TextStyle(
                color: _isSelected[0] ? Colors.blue : Colors.white,
              ),
            ),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomLeft: Radius.circular(30)),
              color: _isSelected[0] ? Colors.white : Colors.blue,
            ),
            width: 90,
            height: 30,
          ),
          Container(
            child: Text(
              'Русский',
              style: TextStyle(
                color: _isSelected[1] ? Colors.blue : Colors.white,
              ),
            ),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              color: _isSelected[1] ? Colors.white : Colors.blue,
            ),
            width: 90,
            height: 30,
          )
        ],
        isSelected: _isSelected,
        onPressed: (index) {
          setState(() {
            if (index == 0) {
              _isSelected[0] = true;
              _isSelected[1] = false;
            } else {
              _isSelected[1] = true;
              _isSelected[0] = false;
            }
          });
        },
      ),
    );
  }

  Widget Reta(IconData icon, String rate) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        Text(
          rate,
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
