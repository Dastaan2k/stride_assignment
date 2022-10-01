import 'package:flutter/material.dart';
import 'package:stride_assignment/core/constants.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: StrideConstants.defaultSpacing),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: const Color(0xff49454F),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      decoration: const BoxDecoration(shape: BoxShape.circle, color: Color(0xffD0BCFF)),
                      padding: const EdgeInsets.all(15),
                      child: const Center(child: Text('A', style: TextStyle(color: Color(0xff1C1B1F), fontSize: 16, fontWeight: FontWeight.w600))),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Title header', style: TextStyle(color: Color(0xffE6E1E5), fontWeight: FontWeight.w600, fontSize: 16)),
                          Text('Subhead', style: TextStyle(color: Color(0xffCAC4D0))),
                        ],
                      ),
                    ),
                    Image.asset('assets/icon.png', fit: BoxFit.fill, height: 15, width: 15),
                    const SizedBox(width: 10)
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width * 0.45,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/bottom_image.png'), fit: BoxFit.cover)
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Title', style: TextStyle(color: Color(0xffE6E1E5), fontWeight: FontWeight.w600, fontSize: 16)),
                    const Text('Subhead', style: TextStyle(color: Color(0xffCAC4D0))),
                    const SizedBox(height: 30),
                    const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor', style: TextStyle(color: Color(0xffCAC4D0))),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        const Expanded(child: SizedBox()),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(color: const Color(0xff938F99), width: 1)
                          ),
                          child: const Text('Action', style: TextStyle(color: Color(0xffD0BCFF))),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                          decoration: BoxDecoration(
                              color: const Color(0xffD0BCFF),
                              borderRadius: BorderRadius.circular(40),
                          ),
                          child: const Text('Action', style: TextStyle(color: Color(0xff381E72))),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
