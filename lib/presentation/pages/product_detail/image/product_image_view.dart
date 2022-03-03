import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

import '../../../widgets/buttons/async_icon_button.dart';

class ProductImageView extends StatelessWidget {
  final String imageUrl;
  const ProductImageView({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              MaterialIconButton(
                icon: '',
                onTap: () async {
                  Navigator.pop(context);
                },
              ),
              Expanded(   
                  child: ExtendedImage.network(
                imageUrl,
                mode: ExtendedImageMode.gesture,
                initGestureConfigHandler: (state) {
                  return GestureConfig(
                    minScale: 0.9,
                    animationMinScale: 0.7,
                    maxScale: 3.0,
                    animationMaxScale: 3.5,
                    speed: 1.0,
                    inertialSpeed: 100.0,
                    initialScale: 1.0,
                    inPageView: false,
                    initialAlignment: InitialAlignment.center,
                  );
                },
              )),
            ],
          ),
        ),
      ),
    );
  }
}
