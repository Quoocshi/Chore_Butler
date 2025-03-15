import 'package:flutter/material.dart';

class VideoCarousel extends StatefulWidget {
  @override
  _VideoCarouselState createState() => _VideoCarouselState();
}

class _VideoCarouselState extends State<VideoCarousel> {
  final PageController _pageController =
      PageController(viewportFraction: 0.6); // Điều chỉnh kích thước viewport
  double _currentPage = 0.0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200, // Chiều cao tổng của danh sách container
          child: PageView.builder(
            controller: _pageController,
            itemCount: 5, // Số lượng container
            itemBuilder: (context, index) {
              double distance =
                  (_currentPage - index).abs(); // Khoảng cách từ trung tâm
              double scale = 1 -
                  (distance * 0.2).clamp(
                      0.0, 0.3); // Phóng to trung tâm, nhỏ dần khi xa hơn

              return Center(
                child: AnimatedContainer(
                  duration: Duration(
                      milliseconds: 0), // Điều chỉnh thời gian chuyển đổi
                  curve: Curves.easeInOut,
                  width: 400 * scale, // Kích thước thay đổi theo khoảng cách
                  height: 150 * scale,
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.black26, width: 2),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 8,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Icon(Icons.play_circle_fill,
                        size: 50 * scale,
                        color: Colors
                            .grey[600]), // Icon thay đổi kích thước theo scale
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
