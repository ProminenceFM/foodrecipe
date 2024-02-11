import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MakePageVideo extends StatefulWidget {
  const MakePageVideo({Key? key, required this.videoimage}) : super(key: key);

  final String videoimage;

  @override
  _MakePageVideoState createState() => _MakePageVideoState();
}

class _MakePageVideoState extends State<MakePageVideo> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 18.0),
      padding: EdgeInsets.only(bottom: 14.0),
      child: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: GestureDetector(
                onTap: () {
                  // Handle play button press here
                  _loadVideo();
                },
                child: isLoading
                    ? _buildShimmerEffect()
                    : Image.asset(
                        widget.videoimage,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
              ),
            ),
            if (isLoading)
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            if (!isLoading)
              Image.asset(
                'assets/images/Playbutton.png',
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildShimmerEffect() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }

  Future<void> _loadVideo() async {
    setState(() {
      isLoading = true;
    });

    // Simulate loading by waiting for 3 seconds
    await Future.delayed(Duration(seconds: 3));

    // After loading, set isLoading to false
    setState(() {
      isLoading = false;
      // Add your logic to handle video playback or loading completion
    });
  }
}
