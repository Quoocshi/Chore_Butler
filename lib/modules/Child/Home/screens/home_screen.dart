import 'package:chore_butler/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:chore_butler/modules/Child/Home/widgets/video_list.dart';
import '../widgets/progress_bar.dart';
import '../widgets/task_list.dart';

class ChildHomeScreen extends StatefulWidget {
  const ChildHomeScreen({super.key});

  @override
  _ChildHomeScreenState createState() => _ChildHomeScreenState();
}

class _ChildHomeScreenState extends State<ChildHomeScreen> {
  int _selectedIndex = 1; // Mặc định chọn "Chatbot"

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Get.offAllNamed(AppRoutes.child_login);
        break;
      case 1:
        Get.offAllNamed(AppRoutes.child_login);
        break;
      case 2:
        Get.offAllNamed(AppRoutes.child_login);
        break;
      case 3:
        Get.offAllNamed(AppRoutes.child_login);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Lời động viên
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Text(
                "LỜI ĐỘNG VIÊN\nCỐ LÊN CỐ LÊN",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          // Thanh tiến độ
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Text("Goals", style: TextStyle(fontSize: 16)),
                SizedBox(width: 8),
                Expanded(child: ProgressBar(percent: 0.5)),
                SizedBox(width: 8),
                Icon(Icons.star, color: Colors.black),
              ],
            ),
          ),
          SizedBox(height: 16),

          // Danh sách nhiệm vụ
          Expanded(
            child: Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text("Todaytasks",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 8),
                  Expanded(child: TaskList()),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Text(
                "How to do it?",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          // Danh sách video
          VideoCarousel(),
          SizedBox(height: 10),
        ],
      ),

      // Thanh điều hướng BottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chatbot'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Resource'),
          BottomNavigationBarItem(icon: Icon(Icons.task), label: 'Tasks'),
        ],
      ),
    );
  }
}
