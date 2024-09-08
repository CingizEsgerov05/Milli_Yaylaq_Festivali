import 'package:flutter/material.dart';
import 'package:milli_yaylaq_fest/login.dart';

class PassRecover extends StatefulWidget {
  const PassRecover({super.key});

  @override
  State<PassRecover> createState() => _PassRecoverState();
}

class _PassRecoverState extends State<PassRecover> {
  var fromKey = GlobalKey<FormState>();
  var tfemail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Şifrəni unutmuşam'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                'Qeydiyyatdan keçərkən istifadə etdiyiniz e-poçt ünvanını daxil edin. Yeni şifrə təyin etmək üçün e-poçt alacaqsınız.',
                style: TextStyle(fontSize: 18),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Form(
                    child: Column(
                  children: [
                    const Align(
                        alignment: Alignment.bottomLeft,
                        child: Text('E-Poçt ünvanı')),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: tfemail,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator: (tfinput) {
                        if (tfinput!.isEmpty) {
                          return 'Email can not be empty';
                        }
                        return null;
                      },
                    )
                  ],
                )),
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
                        String email = tfemail.text;
                        print("email: $email");
                      }
                    },
                    child: const Text(
                      'Göndər',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Hesabınız var?  '),
                  GestureDetector(
                    child: const Text(
                      'Daxil ol',
                      style: TextStyle(color: Colors.blue),
                    ),
                    onTap: () {
                      Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
