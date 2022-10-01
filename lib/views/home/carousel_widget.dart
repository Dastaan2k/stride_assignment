import 'package:flutter/material.dart';
import 'package:stride_assignment/core/constants.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: List.generate(3, (index) => const CarouselCard())..insert(0, const SizedBox(width: StrideConstants.defaultSpacing))
        )
      ),
    );
  }
}




class CarouselCard extends StatelessWidget {
  const CarouselCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: StrideConstants.defaultSpacing),
      child: IntrinsicWidth(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(image: AssetImage('assets/carousel_image.png'), fit: BoxFit.cover)
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: const [
                Text('Sample Name', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                Expanded(child: SizedBox()),
                Text('Within 45 mins')
              ],
            ),
            const Text('Sample Context', style: TextStyle(color: Color(0xff444444))),
            const Text('3.2 (76)'),
          ],
        ),
      ),
    );
  }
}
