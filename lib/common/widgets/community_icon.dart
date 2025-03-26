import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:uniun/domain/entities/community/community_entity.dart';

class CommunityIcon extends StatelessWidget {
  final CommunityEntity? community;
  final double radius;

  const CommunityIcon({super.key, required this.community, this.radius = 12.0});


  Color nameToColor(String name) {
    // Hash the name to generate a unique integer value
    int hash = name.hashCode;

    // Convert the hash value to a range between 0 and 1 (inclusive)
    double hue = hash.remainder(360);

    // Use HSL (Hue, Saturation, Lightness) to create a color
    return HSLColor.fromAHSL(1.0, hue, 0.5, 0.5).toColor();
  }
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    CircleAvatar placeholderIcon = CircleAvatar(
        backgroundColor: nameToColor(community?.name ?? ''),
        maxRadius: radius,
        child: community?.name != null
            ? Text(
                community!.name![0].toUpperCase(),
                semanticsLabel: '',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: radius,
                ),
              )
            : null);

    if (community?.icon?.isNotEmpty != true) return placeholderIcon;

    return CachedNetworkImage(
      imageUrl: community!.icon!,
      imageBuilder: (context, imageProvider) {
        return CircleAvatar(
          backgroundColor: Colors.transparent,
          foregroundImage: imageProvider,
          maxRadius: radius,
        );
      },
      placeholder: (context, url) => placeholderIcon,
      errorWidget: (context, url, error) => placeholderIcon,
    );
  }
}