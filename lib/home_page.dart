import 'package:app/card_widget.dart';
import 'package:app/category_widget.dart';
import 'package:flutter/material.dart';
import 'package:sized_box_extension/sized_box_extension.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _categories = ["Tozalash", "Tuzatish", "Remont", "Bo`yoq"];
  int _currIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currIndex,
          onTap: (index) {
            setState(() {
              _currIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.apps_outlined), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
          ]),
      appBar: AppBar(
        elevation: 3,
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.search), Icon(Icons.notifications_on)],
      ),
      body: Container(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              14.heightBox,
              const Text(
                'Kategoriya',
                style: TextStyle(
                  color: Color(0xFF2A174E),
                  fontSize: 18,
                  fontFamily: 'Poppins Medium',
                  fontWeight: FontWeight.w500,
                ),
              ),
              14.heightBox,
              Container(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _categories.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CategoriesWidget(
                      index: index + 1,
                      name: _categories[index],
                    );
                  },
                ),
              ),
              14.heightBox,
              const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Ko’p ko’rilgan',
                    style: TextStyle(
                      color: Color(0xFF2A174E),
                      fontSize: 18,
                      fontFamily: 'Poppins Medium',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Barchasi',
                    style: TextStyle(
                      color: Color(0xFF703EDB),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0.15,
                    ),
                  )
                ],
              ),
              14.heightBox,
              Container(
                height: 350,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return CardWidget();
                  },
                ),
              ),
              14.heightBox,
              const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Reytingi baland',
                    style: TextStyle(
                      color: Color(0xFF2A174E),
                      fontSize: 18,
                      fontFamily: 'Poppins Medium',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Barchasi',
                    style: TextStyle(
                      color: Color(0xFF703EDB),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0.15,
                    ),
                  )
                ],
              ),
              14.heightBox,
              Container(
                height: 350,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return CardWidget();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
