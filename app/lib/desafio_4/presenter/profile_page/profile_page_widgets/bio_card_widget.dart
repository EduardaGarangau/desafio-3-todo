import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class BioCardWidget extends StatelessWidget {
  final String bio;
  final bool isWebPlatform;

  const BioCardWidget({
    required this.isWebPlatform,
    required this.bio,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themeTextStyle = Theme.of(context).extension<TextStyleExtension>()!;

    return Container(
      alignment: isWebPlatform ? Alignment.centerLeft : Alignment.center,
      width: isWebPlatform ? size.width * 0.13 : size.width * 0.5,
      constraints: BoxConstraints(
        maxHeight: size.height * 0.1,
      ),
      child: Text(
        bio,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        softWrap: true,
        textAlign: isWebPlatform ? TextAlign.start : TextAlign.center,
        style: themeTextStyle.userBioTextStyle.copyWith(
          fontSize: isWebPlatform ? 14 : 17,
          color: Colors.white60,
        ),
      ),
    );
  }
}
