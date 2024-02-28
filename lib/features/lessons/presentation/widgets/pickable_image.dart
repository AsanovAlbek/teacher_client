import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import '../../../../core/resources/colors.dart';

class PickableImage extends StatelessWidget {
  final Function? onPressed;
  final String? imageUrl;
  final FilePickerResult? filePickerResult;
  final double imageSize;
  final BoxFit? fit;
  final Widget? placeholder;
  final Color? backgroundColor;

  const PickableImage(
      {super.key,
      this.onPressed,
      this.imageUrl,
      required this.filePickerResult,
      this.imageSize = 25,
      this.fit = BoxFit.cover,
      this.placeholder, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16),
        child: GestureDetector(
            onTap: () => onPressed?.call(),
            child: Container(
                color: backgroundColor ?? AppColors.emptyImageBackgroundColor,
                width: imageSize,
                height: imageSize,
                child: _createImage())));
  }

  Widget _createImage() {
    if (imageUrl != null &&
        (imageUrl?.isNotEmpty ?? false) &&
        filePickerResult == null) {
      return Image.network(imageUrl!, fit: fit);
    } else if (filePickerResult?.files.single.bytes case final fileBytes?) {
      return Image.memory(fileBytes, fit: fit);
    } else {
      return placeholder ??
          Icon(Icons.add, color: AppColors.gray, size: imageSize / 4);
    }
  }
}
