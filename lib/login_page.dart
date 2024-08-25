import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isPasswordVisible = true;
  final formKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String message = '-';
  Color colorMessage = Colors.grey; 
  bool checkboxValue = false;
  bool switchValue = false;
  double sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ///textformfield username
                TextFormField(
                  controller: usernameController,
                  decoration: const InputDecoration(
                      label: Text('Username'),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person)),
                  validator: (value) {
                    if (value == "" || value.toString().isEmpty) {
                      return "Username tidak boleh kosong !";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 12,
                ),

                ///textformfield password
                TextFormField(
                  controller: passwordController,
                  obscureText: isPasswordVisible,
                  obscuringCharacter: '*',
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    label: const Text('Password'),
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isPasswordVisible = !isPasswordVisible;
                          });
                        },

                        ///icon sebelah kanan
                        icon: isPasswordVisible
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off)),

                    ///icon sebelah kiri
                    prefixIcon: const Icon(Icons.key),
                  ),
                  validator: (value) {
                    if (value == "" || value.toString().isEmpty) {
                      return "Password tidak boleh kosong !";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12,),
                Row(
                  children: [
                    Checkbox(
                      value: checkboxValue, 
                      onChanged: (value) {
                        setState(() {
                          checkboxValue = value!;
                        });
                      },
                      activeColor: Colors.green,
                    ),
                    const Text('Ingat Saya')
                  ],
                ),
                const SizedBox(
                  height: 12
                ),
                Switch(
                  value: switchValue, 
                  onChanged: (value) {
                    setState(() {
                      switchValue = value;
                    });
                  },
                  activeColor: Colors.green,
                ),
                const SizedBox(height: 12,),
                Slider(
                  value: sliderValue, 
                  onChanged: (value) {
                    setState(() {
                      sliderValue = value;
                    });  
                  },
                  activeColor: Colors.green,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        if (usernameController.text == 'admin' &&
                            passwordController.text == 'admin') {
                          ///login berhasil 
                          message = "Login Berhasil";
                          colorMessage = Colors.green;
                        } else {
                          message = "Login Gagal";
                          colorMessage = Colors.red;
                        }
                        // ScaffoldMessenger.of(context).showSnackBar(
                        //     SnackBar(
                        //       content: Text(message),
                        //       backgroundColor: colorMessage,
                        //     )
                        //   );

                        showDialog(
                          context: context, 
                          builder: (context) {
                            // return AlertDialog(
                            //   title: Text(message),
                            //   actions: [
                            //     TextButton(
                            //       onPressed: () {Navigator.pop(context);}, 
                            //       child: const Text('OK')
                            //     ),
                            //     TextButton(
                            //       onPressed: () {Navigator.pop(context);}, 
                            //       child: const Text('Cancel')
                            //     )
                            //   ],
                            // );

                            return SimpleDialog(
                              contentPadding: const EdgeInsets.all(12),
                              children: [
                                Icon(colorMessage==const Color.fromARGB(255, 58, 187, 62)
                                  ?Icons.check_circle_outline
                                  :Icons.close,
                                  size: 36,
                                ),
                                const SizedBox(height: 8,),
                                Center(child: Text(message))
                              ],
                            );
                          },
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      minimumSize: const Size(double.infinity, 58)
                    ),
                    child: const Text('Login', style: TextStyle(color: Colors.white),))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
