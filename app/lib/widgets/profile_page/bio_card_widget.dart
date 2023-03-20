import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class BioCardWidget extends StatelessWidget {
  final String bio;

  const BioCardWidget({
    required this.bio,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themeTextStyle = Theme.of(context).extension<TextStyleExtension>()!;

    return Container(
      alignment: Alignment.center,
      width: size.width * 0.5,
      constraints: BoxConstraints(
        maxHeight: size.height * 0.1,
      ),
      child: Text(
        bio,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        softWrap: true,
        textAlign: TextAlign.center,
        style: themeTextStyle.userBioTextStyle.copyWith(
          fontSize: 17,
          color: Colors.white60,
        ),
      ),
    );
  }
}
