import 'package:flutter/material.dart';
import 'package:stride_assignment/core/constants.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: StrideConstants.defaultSpacing),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('categories', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          SizedBox(height: StrideConstants.defaultSpacing),
          CategoryCard()
        ],
      )
    );
  }
}


class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        decoration: const BoxDecoration(color: Color(0xffF2F2F2)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  image: const DecorationImage(image: AssetImage('assets/category_image.png'), fit: BoxFit.cover)
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Mon, Apr 18 . 21:00 Pm', style: TextStyle(color: Color(0xff262627), fontSize: 12)),
                  const SizedBox(height: 5),
                  const Text('Event Name', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.place_outlined, size: 16),
                      SizedBox(width: 5),
                      Text('Silicon Oasis, Dubai', style: TextStyle(color: Color(0xff262627), fontSize: 12))
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: const [
                      Expanded(child: SizedBox()),
                      Icon(Icons.favorite_border, color: Color(0xff7C7C7C), size: 20),
                      SizedBox(width: 15),
                      Icon(Icons.share_outlined, color: Color(0xff7C7C7C), size: 20),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
