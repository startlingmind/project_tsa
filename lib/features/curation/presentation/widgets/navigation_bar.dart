import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: SizedBox(
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 200,
                height: 100,
                child: Image.asset('logo.png'),
              ),
              Row(mainAxisSize: MainAxisSize.min, children: const [
                _NavBarItem(title: 'Home'),
                SizedBox(width: 30),
                _NavBarItem(title: 'How to get started'),
              ])
            ],
          )),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Text(
        title,
        style: const TextStyle(
            fontSize: 18, color: Color.fromARGB(255, 27, 118, 197)),
      ),
    );
  }
}
