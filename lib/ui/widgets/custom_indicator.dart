import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomIndicator extends StatefulWidget {
  final List<String> imageUrls;

  const CustomIndicator(this.imageUrls);

  @override
  State<StatefulWidget> createState() {
    return CustomIndicatorState();
  }
}

class CustomIndicatorState extends State<CustomIndicator> {
  int currentPos = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 8.0),
        Container(
          height: 440.0,
          child: ImageScrollView(
            imageUrls: widget.imageUrls,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => DetailScreen(
                  imageUrls: widget.imageUrls,
                  onTap: () => Navigator.pop(context),
                ),
              ),
            ),
          ),
        ),
        widget.imageUrls.length > 1
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  widget.imageUrls.length,
                  (index) => Container(
                    width: 8.0,
                    height: 8.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: currentPos == index
                          ? Color.fromRGBO(0, 0, 0, 0.9)
                          : Color.fromRGBO(0, 0, 0, 0.4),
                    ),
                  ),
                ),
              )
            : SizedBox(height: 8.0),
      ],
    );
  }
}

class DetailScreen extends StatelessWidget {
  final List<String> imageUrls;
  final void Function()? onTap;

  DetailScreen({
    required this.imageUrls,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ImageScrollView(
        imageUrls: imageUrls,
        onTap: onTap,
      ),
    );
  }
}

class ImageScrollView extends StatelessWidget {
  const ImageScrollView({
    required this.imageUrls,
    this.onTap,
    this.isFullScreen = false,
  });

  final List<String> imageUrls;
  final void Function()? onTap;
  final bool isFullScreen;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return CachedNetworkImage(
            imageUrl: imageUrls[index],
            fit: isFullScreen ? BoxFit.contain : BoxFit.cover,
            placeholder: (context, _) => Container(
              alignment: Alignment.center,
              width: 32,
              height: 32,
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
  }
}
