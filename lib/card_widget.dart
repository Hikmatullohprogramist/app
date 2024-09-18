import 'package:flutter/material.dart';
import 'package:sized_box_extension/sized_box_extension.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      width: 190,
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: const Color(0xFFF8F8F8),
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 0.25,
            color: Color(0xFFBDBDBD),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        children: [
          Container(
            width: 170,
            height: 90,
            decoration: ShapeDecoration(
              image: const DecorationImage(
                image: NetworkImage("https://via.placeholder.com/170x90"),
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            alignment: Alignment.topRight,
            child: const Icon(
              Icons.redo,
              color: Colors.white,
            ),
          ),
          14.heightBox,
          SizedBox(
            height: 60,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  child: FlutterLogo(),
                ),
                4.widthBox,
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Shodlik Yagmurov',
                      style: TextStyle(
                        color: Color(0xFF2A174E),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '4.5',
                          style: TextStyle(
                            color: Color(0xFF2A174E),
                            fontSize: 8,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Icon(
                          Icons.star,
                          size: 14,
                          color: Color(0xFF49288A),
                        ),
                        Text(
                          '(10+ e’lon)',
                          style: TextStyle(
                            color: Color(0xFF2A174E),
                            fontSize: 8,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          const Text(
            'Menga santexnik kerak.',
            style: TextStyle(
              color: Color(0xFF703EDB),
              fontSize: 12.50,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
              height: 0.10,
            ),
          ),
          12.heightBox,
          const Text(
            'Lorem ipsum dolor sit amet consectetur. Ultricies gravida eget ultrices elit vitae....',
            style: TextStyle(
              color: Color(0xFF3D3D3D),
              fontSize: 7.50,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
          12.heightBox,
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.wallet_outlined),
                      4.widthBox,
                      const Text(
                        '1 000 000 uzs',
                        style: TextStyle(
                          color: Color(0xFF2A174E),
                          fontSize: 7.50,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0.20,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.work_rounded),
                      4.widthBox,
                      const Text(
                        'Bir martalik',
                        style: TextStyle(
                          color: Color(0xFF2A174E),
                          fontSize: 7.50,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0.20,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              8.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.location_on_outlined),
                      4.widthBox,
                      const Text(
                        'Urgench',
                        style: TextStyle(
                          color: Color(0xFF2A174E),
                          fontSize: 7.50,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0.20,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.date_range),
                      4.widthBox,
                      const Text(
                        '17.08.2024',
                        style: TextStyle(
                          color: Color(0xFF2A174E),
                          fontSize: 7.50,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0.20,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          12.heightBox,
          Container(
            width: 166,
            height: 31,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: ShapeDecoration(
              gradient: const LinearGradient(
                begin: Alignment(1.00, 0.00),
                end: Alignment(-1, 0),
                colors: [Color(0xFF703EDB), Color(0xFF996AFF)],
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              shadows: const [
                BoxShadow(
                  color: Color(0x7F9868FD),
                  blurRadius: 23.50,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                )
              ],
            ),
            child: const Text(
              'Batafsil',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFF8F8F8),
                fontSize: 10,
                fontFamily: 'Poppins Medium',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
