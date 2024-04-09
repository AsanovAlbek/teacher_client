import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import '../resources/colors.dart';

class PickableImage extends StatefulWidget {
  final Function? onPressed;
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
  State<PickableImage> createState() => _PickableImageState();
}

class _PickableImageState extends State<PickableImage> {
  @override
  Widget build(BuildContext context) {
    final image = _createImage();
    debugPrint('img $image');
    return Padding(
        padding: const EdgeInsets.all(16),
        child: GestureDetector(
            onTap: () async {
              await widget.onPressed?.call();
              setState(() {});
              debugPrint('fpr = ${widget.filePickerResult?.names.join()}');
            },
            child: Container(
                color: widget.backgroundColor ?? AppColors.emptyImageBackgroundColor,
                width: widget.width ?? widget.imageSize ?? MediaQuery.of(context).size.width,
                height: widget.height ?? widget.imageSize,
                child: image)));
  }

  Widget _createImage() {
    if (widget.filePickerResult?.files.single.bytes case final fileBytes?) {
      return Image.memory(fileBytes, fit: widget.fit);
    } else if (widget.imageUrl != null &&
        (widget.imageUrl?.isNotEmpty ?? false) &&
        widget.filePickerResult == null) {
      return Image.network(widget.imageUrl!, fit: widget.fit);
    } else {
      return widget.placeholder ??
          Icon(Icons.add, color: AppColors.gray, size: widget.imageSize ?? 100 / 4);
    }
  }
}
