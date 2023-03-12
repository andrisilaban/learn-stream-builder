import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    String email = '';
    String password = '';

    String? validateEmail(String value) {
      if (value.isEmpty) {
        return "Field cannot be empty";
      } else {
        return '';
      }
    }

    String? validatePassword(String value) {
      if (value.length < 8) {
        return "At least 8 chars!";
      } else {
        return null;
      }
    }

    return Scaffold(
      body: Center(
        child: LayoutBuilder(builder: (context, dimensions) {
          final width = dimensions.maxWidth / 1.5;
          final height = dimensions.maxHeight / 3;
          return SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 60),
                const SizedBox(
                  width: 200,
                  height: 100,
                  child: SizedBox(
                    width: 250,
                    height: 120,
                    child: Text('Hello, world!'),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 200,
                  height: 100,
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxWidth: 250,
                      maxHeight: 120,
                    ),
                    child: const Text('Hello, world!'),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ConstrainedBox(
                  constraints:
                      const BoxConstraints.expand(height: 200, width: 200),
                  child: const Text(
                    'A Computer Science portal for geeks. It contains well A Computer Science portal for geeks. It contains wellA Computer Science portal for geeks. It contains wellA Computer Science portal for geeks. It contains wellA Computer Science portal for geeks. It contains wellA Computer Science portal for geeks. It contains wellA Computer Science portal for geeks. It contains wellA Computer Science portal for geeks. It contains wellA Computer Science portal for geeks. It contains wellA Computer Science portal for geeks. It contains wellA Computer Science portal for geeks. It contains wellA Computer Science portal for geeks. It contains wellA Computer Science portal for geeks. It contains wellA Computer Science portal for geeks. It contains wellA Computer Science portal for geeks. It contains wellA Computer Science portal for geeks. It contains well',
                    style: TextStyle(fontSize: 15),
                  ), //Text
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: width,
                    minHeight: height,
                  ),
                  child: Card(
                    child: Form(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                                icon: Icon(Icons.mail), hintText: "Email"),
                            onChanged: (value) {
                              email = value;
                            },
                            validator: (value) {
                              if (value != null) {
                                return validateEmail(value.toString());
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                                icon: Icon(Icons.mail), hintText: "Email"),
                            onChanged: (value) {
                              email = value;
                            },
                            validator: (value) {
                              if (value != null) {
                                return validateEmail(value.toString());
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                                icon: Icon(Icons.mail), hintText: "Email"),
                            onChanged: (value) {
                              email = value;
                            },
                            validator: (value) {
                              if (value != null) {
                                return validateEmail(value.toString());
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                                icon: Icon(Icons.mail), hintText: "Email"),
                            onChanged: (value) {
                              email = value;
                            },
                            validator: (value) {
                              if (value != null) {
                                return validateEmail(value.toString());
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                                icon: Icon(Icons.mail), hintText: "Email"),
                            onChanged: (value) {
                              email = value;
                            },
                            validator: (value) {
                              if (value != null) {
                                return validateEmail(value.toString());
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                                icon: Icon(Icons.mail), hintText: "Email"),
                            onChanged: (value) {
                              email = value;
                            },
                            validator: (value) {
                              if (value != null) {
                                return validateEmail(value.toString());
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                                icon: Icon(Icons.mail), hintText: "Email"),
                            onChanged: (value) {
                              email = value;
                            },
                            validator: (value) {
                              if (value != null) {
                                return validateEmail(value.toString());
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                                icon: Icon(Icons.mail), hintText: "Email"),
                            onChanged: (value) {
                              email = value;
                            },
                            validator: (value) {
                              if (value != null) {
                                return validateEmail(value.toString());
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                                icon: Icon(Icons.mail), hintText: "Email"),
                            onChanged: (value) {
                              email = value;
                            },
                            validator: (value) {
                              if (value != null) {
                                return validateEmail(value.toString());
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                                icon: Icon(Icons.mail), hintText: "Email"),
                            onChanged: (value) {
                              email = value;
                            },
                            validator: (value) {
                              if (value != null) {
                                return validateEmail(value.toString());
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                                icon: Icon(Icons.mail), hintText: "Email"),
                            onChanged: (value) {
                              email = value;
                            },
                            validator: (value) {
                              if (value != null) {
                                return validateEmail(value.toString());
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                                icon: Icon(Icons.mail), hintText: "Email"),
                            onChanged: (value) {
                              email = value;
                            },
                            validator: (value) {
                              if (value != null) {
                                return validateEmail(value.toString());
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                                icon: Icon(Icons.mail), hintText: "Email"),
                            onChanged: (value) {
                              email = value;
                            },
                            validator: (value) {
                              if (value != null) {
                                return validateEmail(value.toString());
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                                icon: Icon(Icons.mail), hintText: "Email"),
                            onChanged: (value) {
                              email = value;
                            },
                            validator: (value) {
                              if (value != null) {
                                return validateEmail(value.toString());
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                                icon: Icon(Icons.mail), hintText: "Email"),
                            onChanged: (value) {
                              email = value;
                            },
                            validator: (value) {
                              if (value != null) {
                                return validateEmail(value.toString());
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                                icon: Icon(Icons.mail), hintText: "Email"),
                            onChanged: (value) {
                              email = value;
                            },
                            validator: (value) {
                              if (value != null) {
                                return validateEmail(value.toString());
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                                icon: Icon(Icons.vpn_key),
                                hintText: "Password"),
                            obscureText: true,
                          ),
                          ElevatedButton(
                              onPressed: () {}, child: const Text('LOGIN')),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
