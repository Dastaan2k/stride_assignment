import 'package:flutter/material.dart';
import 'package:stride_assignment/core/constants.dart';
import 'package:stride_assignment/views/home/botton_widget.dart';
import 'package:stride_assignment/views/home/carousel_widget.dart';
import 'package:stride_assignment/views/widgets/textfield.dart';

import 'categories_widget.dart';
import 'highlights_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        children: const [
          SizedBox(height: StrideConstants.defaultSpacing),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: StrideConstants.defaultSpacing),
            child: StrideTextField(),
          ),
          SizedBox(height: StrideConstants.defaultSpacing),
          HighlightsWidget(),
          SizedBox(height: StrideConstants.defaultSpacing * 1.75),
          CarouselWidget(),
          SizedBox(height: StrideConstants.defaultSpacing * 1.75),
          CategoriesWidget(),
          SizedBox(height: StrideConstants.defaultSpacing * 1.75),
          BottomWidget(),
          SizedBox(height: StrideConstants.defaultSpacing * 1.75),
        ],
      )
    );
  }
}
