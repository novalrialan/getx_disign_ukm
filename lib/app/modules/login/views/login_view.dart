import 'package:app_ukm/app/routes/app_pages.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        children: [
          Container(
            alignment: Alignment
                .center, // alignment: Alignment.center set position image
            height: 360,
            child: Image.asset(
              "assets/logo/login_logo.png",
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Silakan masuk dengan mengisikan email dan password kamu",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Email",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          TextField(
            controller: controller.emailC,
            keyboardType: TextInputType.emailAddress,
            autocorrect: false,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Cth. xxx@studentukrim.ac.id"),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Password",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Silakan masukan password "),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Obx(
                () => Checkbox(
                  activeColor: Colors.red, // set color in checkbox
                  value: controller.checkC.value,
                  onChanged: (value) => controller.checkC.toggle(),
                ),
              ),
              Expanded(
                child: RichText(
                  text: TextSpan(
                    text: "Saya bersedia menyetujui ",
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print("klik syarat");
                          },
                        text: "syarat",
                        style: const TextStyle(
                          color: Colors.red,
                        ),
                      ),
                      const TextSpan(
                        text: ", ",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print("klik ketentuan");
                          },
                        text: "ketentuan",
                        style: const TextStyle(
                          color: Colors.red,
                        ),
                      ),
                      const TextSpan(
                        text: ", ",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      const TextSpan(
                        text: "dan ",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print("klik privasi");
                          },
                        text: "privasi ",
                        style: const TextStyle(
                          color: Colors.red,
                        ),
                      ),
                      const TextSpan(
                        text:
                            "yang berlaku di app mobile unit kegiatan mahasiswa Universitas Kristen Immanuel ",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 35,
          ),
          ElevatedButton(
            onPressed: () => Get.offAllNamed(Routes.HOME),
            child: Text(
              "Login",
              style: const TextStyle(fontSize: 16),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.blueAccent[300],
              fixedSize: const Size(150, 50),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text("Atau login dengan menggunakan"),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Image.asset(
                      "assets/icons/google_icon.png",
                      width: 23,
                    ),
                    const Text(" google"),
                  ],
                ),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(45),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
