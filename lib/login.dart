import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:milli_yaylaq_fest/pass_recover.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var fromKey = GlobalKey<FormState>();
  var tfEmail = TextEditingController();
  var tfPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 300,
                child: Image.asset(
                  "images/myf_logo_2.png",
                  fit: BoxFit.fitWidth,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(60.0),
                child: Form(
                  key: fromKey,
                  child: Column(
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'E-Poçt ünvanı',
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller: tfEmail,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: (tfInput) {
                          if (tfInput!.isEmpty) {
                            return 'Email can not be empty';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Şifrə',
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller: tfPassword,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: (tfInput) {
                          if (tfInput!.isEmpty) {
                            return 'Password can not be empty';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const PassRecover()));
                          },
                          child: Text(
                            'Şifrəni unutmuşam',
                            style: TextStyle(
                                fontSize: 15,
                                color: Theme.of(context).primaryColor),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 300,
                height: 70,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15)))),
                    onPressed: () {
                      bool controlresult = fromKey.currentState!.validate();

                      if (controlresult) {
                        String email = tfEmail.text;
                        String pass = tfPassword.text;
                        print("Username: $email - Password: $pass");
                      }
                    },
                    child: const Text(
                      'Giriş edin',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
