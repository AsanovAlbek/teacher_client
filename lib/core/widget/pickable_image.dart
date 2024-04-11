import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import '../resources/colors.dart';

typedef FutureCallback = Future<void> Function();

class PickableImage extends StatelessWidget {
  final FutureCallback? onPressed;
  final String? imageUrl;
  final FilePickerResult? filePickerResult;
  final double? imageSize;
  final BoxFit? fit;
  final Widget? placeholder;
  final Color? backgroundColor;
  final double? width;
  final double? height;

  const PickableImage(
      {super.key,
      this.onPressed,
      this.imageUrl,
      required this.filePickerResult,
      this.imageSize,
      this.fit = BoxFit.cover,
      this.placeholder,
      this.backgroundColor,
      this.height,
      this.width});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16),
        child: GestureDetector(
            onTap: () async {
              await onPressed?.call();
              debugPrint('fpr = ${filePickerResult?.names.join()}');
            },
            child: Container(
                color: backgroundColor ?? AppColors.emptyImageBackgroundColor,
                width: width ?? imageSize ?? MediaQuery.of(context).size.width,
                height: height ?? imageSize,
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
          Icon(Icons.add, color: AppColors.gray, size: imageSize ?? 100 / 4);
    }
  }
}
