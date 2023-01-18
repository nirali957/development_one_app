import 'dart:math';

import 'package:flutter/material.dart';
import 'package:second_development_app/common_widget/common_button.dart';
import 'package:second_development_app/staggered_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: MyPage(),
      // home: ColorPicker(),
      // home: const SwipeCard(),
      // home: const PhotoViewScreen(),
      // home: const NumberPickerScreen(),
      // home: const BaloonPickerScreen(),
      // home: DateTimePicker(),
      home: const StaggeredView(),
      // home: const NavigationOneScreen(),
    );
  }
}

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> with TickerProviderStateMixin {
  AnimationController? animationController;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  dynamic colorCode = 0xff000000;
  Random random = Random();

  int index = 0;
  List colorList = [];
  void generateColor() {
    colorCode = random.nextInt(0xffffffff);
    index++;
    colorList.add(colorCode);
    setState(() {});
  }

  void changeColor() {
    if (index != 0) {
      index--;
    }
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    colorList.add(colorCode);
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // backgroundColor: Color(colorList[index]),
      body: Form(
        key: formKey,
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 10),
              TextFormField(
                controller: emailController,
                showCursor: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black45,
                      width: 3,
                      style: BorderStyle.solid,
                      strokeAlign: StrokeAlign.outside,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),

                  fillColor: Colors.yellow,
                  focusColor: Colors.brown,
                  labelText: "email",
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                  // icon: Icon(Icons.circle),
                  prefixIcon: const Icon(
                    Icons.center_focus_weak_rounded,
                    color: Colors.indigo,
                  ),
                  suffixIcon: const Icon(
                    Icons.remove_red_eye,
                    color: Colors.red,
                  ),
                  suffixText: "Show",
                  labelStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.red,
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    borderSide: BorderSide(
                      color: Colors.deepOrange,
                      width: 2,
                      strokeAlign: StrokeAlign.inside,
                      style: BorderStyle.solid,
                    ),
                  ),
                  errorBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    borderSide: BorderSide(
                      color: Colors.purple,
                      width: 5,
                      strokeAlign: StrokeAlign.inside,
                      style: BorderStyle.solid,
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    borderSide: BorderSide(
                      color: Colors.green,
                      width: 3,
                      strokeAlign: StrokeAlign.inside,
                      style: BorderStyle.solid,
                    ),
                  ),
                  // hintText: "New Input",
                  // hintTextDirection: TextDirection.rtl,
                  // hintStyle: TextStyle(
                  //   color: Colors.teal,
                  //   height: 5,
                  // fontSize: 15,
                  // fontWeight: FontWeight.bold,
                  //
                  // isDense: true,

                  // counter: Container(
                  //   color: Colors.amber,
                  //   width: 10,
                  //   height: 10,
                  // ),
                  // semanticCounterText: "Error",
                  // counterText: "Counter",
                  // counterStyle: const TextStyle(
                  //   height: 30,
                  //   color: Colors.deepPurple,
                  //   shadows: [
                  //     Shadow(color: Colors.black87),
                  //   ],
                  // ),

                  // isCollapsed: true,
                  // disabledBorder: OutlineInputBorder(
                  //   borderSide: BorderSide(
                  //     color: Colors.green,
                  //     width: 10,
                  //     strokeAlign: StrokeAlign.outside,
                  //   ),
                  // ),
                  // errorStyle: TextStyle(
                  //   color: Colors.orange,
                  //   height: 17,
                  // ),
                ),
                obscureText: true,
                onChanged: (value) {
                  debugPrint("onChanged ------------>> $value");
                  setState(() {});
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                maxLength: 20,
                scrollController: ScrollController(),
                autocorrect: true,
                cursorColor: Colors.pink,
                cursorRadius: const Radius.circular(10),
                cursorWidth: 7,
                cursorHeight: 25,
                enabled: true,
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.send,
                // focusNode: FocusScopeNode(),
                // obscuringCharacter: "*",
                // readOnly: true,
                // keyboardAppearance: Brightness.light,
                // readOnly: ,..................................................,
                // restorationId: "Enter new ID",
                // textCapitalization: TextCapitalization.sentences,.........
              ),
              const SizedBox(
                height: 10,
              ),
              // TextFormField(
              //   controller: passwordController,
              //   showCursor: true,
              //   decoration: InputDecoration(
              //     border: OutlineInputBorder(
              //       borderSide: const BorderSide(
              //         color: Colors.black45,
              //         width: 3,
              //         style: BorderStyle.solid,
              //         strokeAlign: StrokeAlign.outside,
              //       ),
              //       borderRadius: BorderRadius.circular(20),
              //     ),
              //
              //     fillColor: Colors.yellow,
              //     focusColor: Colors.brown,
              //     labelText: "Password",
              //     floatingLabelAlignment: FloatingLabelAlignment.start,
              //     // icon: Icon(Icons.circle),
              //     prefixIcon: const Icon(
              //       Icons.center_focus_weak_rounded,
              //       color: Colors.indigo,
              //     ),
              //     suffixIcon: const Icon(
              //       Icons.remove_red_eye,
              //       color: Colors.red,
              //     ),
              //     suffixText: "Show",
              //     labelStyle: const TextStyle(
              //       fontSize: 20,
              //       fontWeight: FontWeight.w600,
              //       color: Colors.red,
              //     ),
              //     enabledBorder: const OutlineInputBorder(
              //       borderRadius: BorderRadius.all(
              //         Radius.circular(10),
              //       ),
              //       borderSide: BorderSide(
              //         color: Colors.deepOrange,
              //         width: 2,
              //         strokeAlign: StrokeAlign.inside,
              //         style: BorderStyle.solid,
              //       ),
              //     ),
              //     errorBorder: const OutlineInputBorder(
              //       borderRadius: BorderRadius.all(
              //         Radius.circular(10),
              //       ),
              //       borderSide: BorderSide(
              //         color: Colors.purple,
              //         width: 5,
              //         strokeAlign: StrokeAlign.inside,
              //         style: BorderStyle.solid,
              //       ),
              //     ),
              //     focusedBorder: const OutlineInputBorder(
              //       borderRadius: BorderRadius.all(
              //         Radius.circular(10),
              //       ),
              //       borderSide: BorderSide(
              //         color: Colors.green,
              //         width: 3,
              //         strokeAlign: StrokeAlign.inside,
              //         style: BorderStyle.solid,
              //       ),
              //     ),
              //     // hintText: "New Input",
              //     // hintTextDirection: TextDirection.rtl,
              //     // hintStyle: TextStyle(
              //     //   color: Colors.teal,
              //     //   height: 5,
              //     //   fontSize: 15,
              //     //   fontWeight: FontWeight.bold,
              //     //
              //     // isDense: true,
              //
              //     // counter: Container(
              //     //   color: Colors.amber,
              //     //   width: 10,
              //     //   height: 10,
              //     // ),
              //     // semanticCounterText: "Error",
              //     // counterText: "Counter",
              //     // counterStyle: const TextStyle(
              //     //   height: 30,
              //     //   color: Colors.deepPurple,
              //     //   shadows: [
              //     //     Shadow(color: Colors.black87),
              //     //   ],
              //     // ),
              //
              //     // isCollapsed: true,
              //     // disabledBorder: OutlineInputBorder(
              //     //   borderSide: BorderSide(
              //     //     color: Colors.green,
              //     //     width: 10,
              //     //     strokeAlign: StrokeAlign.outside,
              //     //   ),
              //     // ),
              //     // errorStyle: TextStyle(
              //     //   color: Colors.orange,
              //     //   height: 17,
              //     // ),
              //   ),
              //   obscureText: true,
              //   onChanged: (value) {
              //     debugPrint("onChanged ------------>> $value");
              //     setState(() {});
              //   },
              //   validator: (value) {
              //     if (value == null || value.isEmpty) {
              //       return 'Please enter some text';
              //     } else if (value.length != 4) {
              //       return 'Please enter 4 Word';
              //     }
              //
              //     return null;
              //   },
              //   maxLength: 20,
              //   scrollController: ScrollController(),
              //   autocorrect: true,
              //   cursorColor: Colors.pink,
              //   cursorRadius: const Radius.circular(10),
              //   cursorWidth: 7,
              //   cursorHeight: 25,
              //   enabled: true,
              //   keyboardType: TextInputType.visiblePassword,
              //   textInputAction: TextInputAction.send,
              //   // focusNode: FocusScopeNode(),
              //   obscuringCharacter: "*",
              //   // readOnly: true,
              //   // keyboardAppearance: Brightness.light,
              //   // readOnly: ,..................................................,
              //   // restorationId: "Enter new ID",
              //   // textCapitalization: TextCapitalization.sentences,.........
              // ),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                child: const Text('Submit'),
              ),

              const SizedBox(height: 30),
              CommonButton(
                onTap: () {
                  // const ColorPicker();
                  // Fluttertoast.showToast(
                  //   msg: "Login Successfully",
                  //   toastLength: Toast.LENGTH_SHORT,
                  //   gravity: ToastGravity.BOTTOM,
                  //   timeInSecForIosWeb: 1,
                  //   backgroundColor: Colors.red,
                  //   textColor: Colors.white,
                  //   fontSize: 16.0,
                  // );

                  final snackBar = SnackBar(
                    content: const Text('Yay! A SnackBar!'),
                    duration: const Duration(seconds: 2),
                    animation: CurvedAnimation(
                      parent: animationController!,
                      curve: Curves.bounceOut,
                    ),
                    behavior: SnackBarBehavior.floating,
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {
                        // Some code to undo the change.
                      },
                    ),
                  );

                  // Find the ScaffoldMessenger in the widget tree
                  // and use it to show a SnackBar.
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                height: 45,
                iShadowFull: false,
                // shadowColor: Colors.blue,
                // buttonColor: Colors.deepPurpleAccent,
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     FloatingActionButton(
              //       child: const Icon(Icons.add),
              //       onPressed: () {
              //         generateColor();
              //       },
              //     ),
              //     FloatingActionButton(
              //       child: const Icon(Icons.remove),
              //       onPressed: () {
              //         changeColor();
              //       },
              //     ),
              //     Text(
              //       "$index",
              //       style: const TextStyle(
              //         fontSize: 20,
              //         color: Colors.white,
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }

  bool validtor() {
    if (emailController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(' Data'),
        ),
      );
      return false;
    }

    return true;
  }
}
