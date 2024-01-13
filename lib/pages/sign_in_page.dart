import 'package:firstapp/pages/sign_up_page.dart';
import 'package:firstapp/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:firstapp/theme/theme.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formSignInKey = GlobalKey<FormState>();
  bool rememberPassword = true;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        child: Column(
      children: [
        const Expanded(flex: 2, child: SizedBox(height: 10)),
        Expanded(
            flex: 7,
            child: Container(
              padding: const EdgeInsets.fromLTRB(25, 50, 25, 20),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: SingleChildScrollView(
                child: Form(
                    key: _formSignInKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Welcome back to HELPAPP',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w900,
                            color: lightColorScheme.primary,
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "please enter email";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              label: const Text('Email'),
                              hintText: 'Enter Email',
                              hintStyle: const TextStyle(
                                color: Colors.black26,
                              ),
                              border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.black26),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.black12,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                        const SizedBox(
                          height: 25.0,
                        ),
                        TextFormField(
                          obscureText: true,
                          obscuringCharacter: '*',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter Password';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            label: const Text('Password'),
                            hintText: 'Enter Password',
                            hintStyle: const TextStyle(
                              color: Colors.black26,
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black12, // Default border color
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black12, // Default border color
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 25.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  value: rememberPassword,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      rememberPassword = value!;
                                    });
                                  },
                                  activeColor: lightColorScheme.primary,
                                ),
                                const Text(
                                  'Remember me',
                                  style: TextStyle(
                                    color: Colors.black45,
                                  ),
                                ),
                              ],
                            ),
                            GestureDetector(
                              child: Text(
                                'Forget password?',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: lightColorScheme.primary,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 25.0,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formSignInKey.currentState!.validate() &&
                                  rememberPassword) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Processing Data'),
                                  ),
                                );
                              } else if (!rememberPassword) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text(
                                          'Please agree to the processing of personal data')),
                                );
                              }
                            },
                            child: const Text('Sign in'),
                          ),
                        ),
                        const SizedBox(
                          height: 25.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.7,
                                color: Colors.grey.withOpacity(0.5),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 0,
                                horizontal: 10,
                              ),
                              child: Text(
                                'Sign up with',
                                style: TextStyle(
                                  color: Colors.black45,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                thickness: 0.7,
                                color: Colors.grey.withOpacity(0.5),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 25.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Logo(Logos.facebook_f),
                            Logo(Logos.twitter),
                            Logo(Logos.google),
                            Logo(Logos.apple),
                          ],
                        ),
                        const SizedBox(
                          height: 25.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Don\'t have an account? ',
                              style: TextStyle(
                                color: Colors.black45,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (e) => const SignUpPage(),
                                  ),
                                );
                              },
                              child: Text(
                                'Sign up',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: lightColorScheme.primary,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 25.0,
                        ),
                      ],
                    )),
              ),
            )),
      ],
    ));
  }
}

// class SignInPage extends StatelessWidget {
//   const SignInPage({super.key});

//   final _formSignInKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return CustomScaffold(
//         child: Column(
//       children: [
//         const Expanded(flex: 3, child: SizedBox(height: 10)),
//         Expanded(
//             flex: 5,
//             child: Container(
//               decoration: const BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(40),
//                       topRight: Radius.circular(40))),
//               child: Form(
//                   key: _formSignInKey,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       const SizedBox(
//                         height: 40,
//                       ),
//                       TextFormField(
//                         validator: (value) {
//                           if (value == null || value.isEmpty) {
//                             return "please enter email";
//                           }
//                           return null;
//                         },
//                         decoration: InputDecoration(
//                             label: const Text('Email'),
//                             hintText: 'Enter Email',
//                             hintStyle: const TextStyle(
//                               color: Colors.black26,
//                             ),
//                             border: OutlineInputBorder(
//                               borderSide:
//                                   const BorderSide(color: Colors.black26),
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                             enabledBorder: OutlineInputBorder(
//                               borderSide: const BorderSide(
//                                 color: Colors.black12,
//                               ),
//                               borderRadius: BorderRadius.circular(10),
//                             )),
//                       ),
//                       const SizedBox(
//                         height: 25.0,
//                       ),
//                     ],
//                   )),
//             )),
//       ],
//     ));
//   }
// }
