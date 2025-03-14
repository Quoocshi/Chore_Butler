import 'package:chore_butler/modules/login/widgets/button.dart';
import 'package:chore_butler/modules/login/widgets/textfield.dart';
import 'package:chore_butler/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var rememberMe = false.obs;
}

class LoginScreen extends StatelessWidget {
  final LoginController controller = Get.put(LoginController());

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
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Đăng Nhập",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(width: 50),
                GestureDetector(
                  onTap: () => Get.offAllNamed(
                    AppRoutes.register,
                  ),
                  child: Text(
                    "Đăng Ký",
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            MyTextField(label: "Email"),
            MyTextField(label: "Mật Khẩu", isPassword: true),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Obx(
                      () => Switch(
                        value: controller.rememberMe.value,
                        onChanged: (value) {
                          controller.rememberMe.value = value;
                        },
                      ),
                    ),
                    Text("Ghi nhớ mật khẩu"),
                  ],
                ),
                Text("Quên mật khẩu?", style: TextStyle(color: Colors.blue)),
              ],
            ),
            SizedBox(height: 20),
            CustomButton(
                label: "Continue",
                onPressed: () {
                  Get.offAllNamed(AppRoutes.child_register);
                }),
          ],
        ),
      ),
    );
  }
}
