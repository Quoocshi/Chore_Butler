import 'package:chore_butler/global_widgets/button.dart';
import 'package:chore_butler/global_widgets/textfield.dart';
import 'package:chore_butler/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Get.offAllNamed(AppRoutes.pick_role),
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
                    const Color.fromARGB(255, 167, 161, 161),
                    Colors.black
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => Get.offAllNamed(AppRoutes.login),
                    child: Text("Đăng Nhập",
                        style: TextStyle(fontSize: 20, color: Colors.grey)),
                  ),
                  SizedBox(width: 50),
                  Text("Đăng Ký",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 20),
              MyTextField(label: "ID của bé"),
              MyTextField(label: "Mật Khẩu", isPassword: true),
              SizedBox(height: 50),
              Center(
                child: Text("Hoặc", textAlign: TextAlign.center),
              ),
              SizedBox(height: 10),
              Center(
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.login, color: Colors.white),
                  label: Text(
                    "Sign in with Google",
                    style: TextStyle(color: Colors.white),
                  ),
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                ),
              ),
              SizedBox(height: 20),
              CustomButton(
                label: "Continue",
                onPressed: () {
                  Get.offAllNamed(AppRoutes.login);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
