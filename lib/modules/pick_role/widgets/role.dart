import 'package:flutter/material.dart';

class RoleWidget extends StatelessWidget {
  final int role;
  final String roleName;
  final bool isSelected;
  final VoidCallback onTap;

  const RoleWidget({
    Key? key,
    required this.role,
    required this.roleName,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 250,
          height: 250,
          margin: EdgeInsets.symmetric(vertical: 20),
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            border: Border.all(
              color: isSelected ? Colors.blue : Colors.grey,
              width: isSelected ? 3 : 1,
            ),
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey[200],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.image, size: 80, color: Colors.grey),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                decoration: BoxDecoration(
                  color: Colors.grey[700],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  roleName,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
