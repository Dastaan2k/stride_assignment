import 'package:flutter/material.dart';
import 'package:stride_assignment/core/constants.dart';

class HighlightsWidget extends StatelessWidget {

  const HighlightsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        SizedBox(width: StrideConstants.defaultSpacing),
        Expanded(flex: 1, child: HighlightsCard(isNew: true, isFavorite: true,)),
        SizedBox(width: StrideConstants.defaultSpacing),
        Expanded(flex: 1, child: HighlightsCard()),
        SizedBox(width: StrideConstants.defaultSpacing)
      ],
    );
  }
}



class HighlightsCard extends StatefulWidget {
  
  final bool isNew;
  final bool isFavorite;
  
  const HighlightsCard({Key? key, this.isNew = false, this.isFavorite = false}) : super(key: key);

  @override
  State<HighlightsCard> createState() => _HighlightsCardState();
}

class _HighlightsCardState extends State<HighlightsCard> {

  bool _isFavorite = false;

  @override
  void initState() {
    _isFavorite = widget.isFavorite;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: constraints.constrainWidth() * 1.25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade300,
                    image: const DecorationImage(image: AssetImage('assets/highlight_image.png'), fit: BoxFit.cover)
                  ),
                ),
                widget.isNew ? const Positioned(top: 8, left: 8, child: NewTag()) : const SizedBox()
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Text('AED 150.00', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
                const Expanded(child: SizedBox()),
                GestureDetector(
                  onTap: () {
                    setState(() => _isFavorite = !_isFavorite);
                  },
                  child: _isFavorite ? Icon(Icons.favorite) : Icon(Icons.favorite_border)
                )
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: const [
                Expanded(child: Text('Wooden table featuring a raised desk', style: TextStyle(color: Color(0xff9e9e9e), overflow: TextOverflow.ellipsis, fontSize: 12), maxLines: 2)),
                SizedBox(width: StrideConstants.defaultSpacing)
              ],
            )
          ],
        );
      }
    );
  }
}


class NewTag extends StatelessWidget {
  const NewTag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: const Color(0xfffee440)),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      child: const Text('new', style: TextStyle(fontWeight: FontWeight.w600)),
    );
  }
}


