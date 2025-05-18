// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';
import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:web_by_flutter_ecom_admin/common/styles/t_shimmer_effect.dart';
import 'package:web_by_flutter_ecom_admin/utils/constants/sizes.dart';

class TCircularImage extends StatelessWidget {
  const TCircularImage({
    super.key,
    this.applyImageRadius = true,
    this.border,
    this.borderRadius = TSizes.md,
    this.fit = BoxFit.contain,
    this.image,
    this.file,
    this.imageType,
    this.overlayColor,
    this.backgroundColor,
    this.memoryImage,
    this.width = 56,
    this.height = 56,
    this.padding = TSizes.sm,
    this.margin,
  });

  final bool applyImageRadius;
  final BoxBorder? border;
  final double borderRadius;
  final BoxFit? fit;
  final String? image;
  final File? file;
  final String? imageType;
  final Color? overlayColor;
  final Color? backgroundColor;
  final Uint8List? memoryImage;
  final double width, height, padding;
  final double? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin != null ? EdgeInsets.all(margin!) : null,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          border: border,
          color: backgroundColor ?? (Theme.of(context).brightness == Brightness.dark ? Colors.black : Colors.white),
          borderRadius: BorderRadius.circular(width >= height ? width : height)),
      child: _buildImageWidget(),
    );
  }

// Function to build image widget
  Widget _buildImageWidget() {
    Widget? imageWidget;

    switch (imageType) {
      case "network":
      imageWidget = _buildNetworkImage();
      break;
      case 'memory':
      imageWidget = _buildMemoryImage();
      break;
      case 'file':
      imageWidget = _buildFileImage();
      break;
      case 'asset':
      imageWidget = _buildAssetImage();
      break;
        
      default:
    }

    // Apply ClipRRect directly to the image widget
    return ClipRRect(
      borderRadius: BorderRadius.circular(width >= height ? width : height),
      child: imageWidget,
    );
  }

  // Function to build network image widget
Widget _buildNetworkImage() {
  if (image != null) {
    // Use CachedNetworkImage for efficient loading and caching of network Image // not working in Web but just for loading 
    return CachedNetworkImage(fit: fit, imageUrl: image!, 
    errorWidget: (context, url, error) => Icon(Icons.error), 
    progressIndicatorBuilder: (context, url, downloadProgress) => TShimmerEffect(width: width, height: height),
    color: overlayColor,);
  } else {
    // Return an empty container if no image is provided
    return Container();
  }
}

  // Function to build memory image widget
Widget _buildMemoryImage() {
  if (memoryImage != null) {
    // Display image from memory using Image widget
    return Image(fit: fit, image: MemoryImage(memoryImage!), color: overlayColor,);
  } else {
    // Return an empty container if no image is provided
    return Container();
  }
}

  // Function to build file image widget
Widget _buildFileImage() {
  if (file != null) {
    // Display image from file using Image widget
    return Image(fit: fit, image: FileImage(file!), color: overlayColor,);
  } else {
    // Return an empty container if no image is provided
    return Container();
  }
}

  // Function to build asset image widget
Widget _buildAssetImage() {
  if (image != null) {
    // Display image from assets using Image widget
    return Image(fit: fit, image: AssetImage(image!), color: overlayColor,);
  } else {
    // Return an empty container if no image is provided
    return Container();
  }
}
}


