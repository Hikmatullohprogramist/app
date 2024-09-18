import 'package:flutter/widgets.dart';
import 'package:sized_box_extension/sized_box_extension.dart';

class CategoriesWidget extends StatelessWidget {
  final int index;
  final String name;
  const CategoriesWidget({
    super.key,
    required this.index, required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            padding: const EdgeInsets.all(10),
            decoration: ShapeDecoration(
              color: Color(0xFFF8F8F8),
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 0.25, color: Color(0xFFBDBDBD)),
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            child: Image.asset("assets/categories/img$index.png"),
          ),
          18.heightBox,
          Text(
            name,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF703EDB),
              fontSize: 13,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              height: 0.10,
            ),
          ),
        ],
      ),
    );
  }
}
