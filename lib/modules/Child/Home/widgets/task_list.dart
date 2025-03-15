import 'package:flutter/material.dart';

class TaskList extends StatelessWidget {
  final List<String> tasks = [
    "Lorem ipsum dolor sit amet, consec tetur",
    "Lorem ipsum dolor sit amet, consec tetur",
    "Lorem ipsum dolor sit amet, consec tetur"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) => _buildTaskItem(tasks[index]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTaskItem(String task) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.purple, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          // Icon hình tròn bên trái
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.purple, width: 2),
            ),
            child: Center(
              child: Icon(Icons.play_circle_fill, color: Colors.purple),
            ),
          ),
          SizedBox(width: 12),
          // Nội dung task
          Expanded(
            child: Text(
              task,
              style: TextStyle(fontSize: 14),
            ),
          ),
          // Nút đóng (X)
          IconButton(
            icon: Icon(Icons.close, color: Colors.black54),
            onPressed: () {
              // TODO: Xử lý khi xóa task
            },
          ),
        ],
      ),
    );
  }
}
