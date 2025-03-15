import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:chore_butler/modules/pick_role/widgets/role.dart';
import 'package:chore_butler/routes/app_routes.dart';

class PickRole extends StatefulWidget {
  const PickRole({super.key});

  @override
  _PickRoleState createState() => _PickRoleState();
}

class _PickRoleState extends State<PickRole> {
  int? selectedRole;

  void selectRole(int role) {
    setState(() {
      selectedRole = role;
    });

    if (role == 1) {
      Get.toNamed(AppRoutes.login); // Điều hướng đến màn hình login
    }

    if (role == 2) {
      Get.offAllNamed(AppRoutes.child_login);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 4,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black,
                    const Color.fromARGB(255, 167, 161, 161),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Text(
              "Pick your role",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            RoleWidget(
              role: 1,
              roleName: "Role 1",
              isSelected: selectedRole == 1,
              onTap: () => selectRole(1),
            ),
            RoleWidget(
              role: 2,
              roleName: "Role 2",
              isSelected: selectedRole == 2,
              onTap: () => selectRole(2),
            ),
          ],
        ),
      ),
    );
  }
}
