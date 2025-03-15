import 'package:chore_butler/global_widgets/button.dart';
import 'package:chore_butler/global_widgets/textfield.dart';
import 'package:chore_butler/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChildRegisterInfo extends StatelessWidget {
  const ChildRegisterInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Get.offAllNamed(AppRoutes.login),
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
                  colors: [Colors.grey, Colors.black],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Thông tin đăng nhập của bé",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),
              MyTextField(label: "Số lượng"),
              MyTextField(label: "Tên bé"),
              MyTextField(label: "Mật Khẩu", isPassword: true),
              MyTextField(label: "Mật Khẩu", isPassword: true),
              SizedBox(height: 20),
              CustomButton(
                label: "Continue",
                onPressed: () {
                  Get.offAllNamed(AppRoutes.pick_role);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
