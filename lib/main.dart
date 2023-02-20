
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const customSwatch = MaterialColor(
    0xFFFF5252,
    <int, Color>{
      50: Color(0xFFFFEBEE),
      100: Color(0xFFFFCDD2),
      200: Color(0xFFEF9A9A),
      300: Color(0xFFE57373),
      400: Color(0xFFEF5350),
      500: Color(0xFFFF5252),
      600: Color(0xFFE53935),
      700: Color(0xFFD32F2F),
      800: Color(0xFFC62828),
      900: Color(0xFFB71C1C),
    },
  );

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: customSwatch,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Modul 6 Task 2"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                AnimatedButton(
                  text: "Ma'lumot dialogining o'zgarmas kenglik va kvadrat tugmalari",
                  pressEvent: () {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.infoReverse,
                      borderSide: const BorderSide(
                        color: Colors.green,
                        width: 2,
                      ),
                      width: 280,
                      buttonsBorderRadius: const BorderRadius.all(
                        Radius.circular(2),
                      ),
                      dismissOnTouchOutside: true,
                      dismissOnBackKeyPress: false,
                      onDismissCallback: (type) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("$type Tomonidan ishdan bo'shatilgan"),
                          ),
                        );
                      },
                      headerAnimationLoop: false,
                      animType: AnimType.bottomSlide,
                      title: 'INFO',
                      desc: "Ushbu dialog oynasini tashqariga tegizish bilan o'chirib qo'yish mumkin",
                      showCloseIcon: true,
                      btnCancelOnPress: () {},
                      btnOkOnPress: () {},
                    ).show();
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                AnimatedButton(
                  text: "Maxsus BTN uslubi bilan savol dialogi",
                  pressEvent: () {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.question,
                      headerAnimationLoop: false,
                      animType: AnimType.topSlide,
                      title: 'Savol',
                      desc: 'Dialog tavsifi bu yerda...',
                      buttonsTextStyle: const TextStyle(color: Colors.black),
                      showCloseIcon: true,
                      btnCancelOnPress: () {},
                      btnOkOnPress: () {},
                    ).show();
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                AnimatedButton(
                  text: "Ma'lumot dialogi tugmalarsiz",
                  pressEvent: () {
                    AwesomeDialog(
                      context: context,
                      headerAnimationLoop: true,
                      animType: AnimType.bottomSlide,
                      title: 'INFO',
                      desc:
                      'Lorem ipsum dolor sit amet consectetur adipiscing elit eget ornare tempus, vestibulum sagittis rhoncus felis hendrerit lectus ultricies duis vel, id morbi cum ultrices tellus metus dis ut donec. Ut sagittis viverra venenatis eget euismod faucibus odio ligula phasellus,',
                    ).show();
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                AnimatedButton(
                  text: 'Ogohlantirish dialogi',
                  color: Colors.orange,
                  pressEvent: () {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.warning,
                      headerAnimationLoop: false,
                      animType: AnimType.topSlide,
                      showCloseIcon: true,
                      closeIcon: const Icon(Icons.close_fullscreen_outlined),
                      title: 'Warning',
                      desc:
                      'Dialog tavsifi bu yerda..................................................',
                      btnCancelOnPress: () {},
                      onDismissCallback: (type) {
                        debugPrint('Dialog Dissmiss from callback $type');
                      },
                      btnOkOnPress: () {},
                    ).show();
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                AnimatedButton(
                  text: 'Xato dialogi',
                  color: Colors.red,
                  pressEvent: () {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.error,
                      animType: AnimType.rightSlide,
                      headerAnimationLoop: true,
                      title: 'Error',
                      desc:
                      'Dialog tavsifi bu yerda..................................................',
                      btnOkOnPress: () {},
                      btnOkIcon: Icons.cancel,
                      btnOkColor: Colors.red,
                    ).show();
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                AnimatedButton(
                  text: 'Muvaffaqiyatli dialog',
                  color: Colors.green,
                  pressEvent: () {
                    AwesomeDialog(
                      context: context,
                      animType: AnimType.leftSlide,
                      headerAnimationLoop: false,
                      dialogType: DialogType.success,
                      showCloseIcon: true,
                      title: 'Succes',
                      desc:
                      'Dialog tavsifi bu yerda..................................................',
                      btnOkOnPress: () {
                        debugPrint('OnClcik');
                      },
                      btnOkIcon: Icons.check_circle,
                      onDismissCallback: (type) {
                        debugPrint('Dialog Dissmiss from callback $type');
                      },
                    ).show();
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                AnimatedButton(
                  text: "Sarlavhali dialog oynasi yo'q",
                  color: Colors.cyan,
                  pressEvent: () {
                    AwesomeDialog(
                      context: context,
                      headerAnimationLoop: false,
                      dialogType: DialogType.noHeader,
                      title: "Sarlavha yo'q",
                      desc:
                      'Dialog tavsifi bu yerda..................................................',
                      btnOkOnPress: () {
                        debugPrint('OnClcik');
                      },
                      btnOkIcon: Icons.check_circle,
                    ).show();
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                AnimatedButton(
                  text: 'Maxsus tana dialogi',
                  color: Colors.blueGrey,
                  pressEvent: () {
                    AwesomeDialog(
                      context: context,
                      animType: AnimType.scale,
                      dialogType: DialogType.info,
                      body: const Center(
                        child: Text(
                          "Agar korpus ko'rsatilgan bo'lsa, sarlavha va tavsif e'tiborga olinmaydi, bu dialogni yanada sozlash imkonini beradi.",
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                      title: "Bu e'tiborga olinmaydi",
                      desc: "Bu ham e'tiborga olinmaydi",
                    ).show();
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                AnimatedButton(
                  text: 'Avtomatik yashirish dialogi',
                  color: Colors.purple,
                  pressEvent: () {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.info,
                      animType: AnimType.scale,
                      title: 'Avtomatik yashirish dialogi',
                      desc: '2 soniyadan keyin avtomatik yashirish',
                      autoHide: const Duration(seconds: 2),
                    ).show();
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                AnimatedButton(
                  text: 'Sinov dialogi',
                  color: Colors.orange,
                  pressEvent: () {
                    AwesomeDialog(
                      context: context,
                      keyboardAware: true,
                      dismissOnBackKeyPress: false,
                      dialogType: DialogType.warning,
                      animType: AnimType.bottomSlide,
                      btnCancelText: "Buyurtmani bekor qilish",
                      btnOkText: "Ha, men to'layman",
                      title: "Toʻlash davom ettirilsinmi?",

                      desc:
                      "Iltimos, 30 daqiqa ichida 3000 INR to'lashingizni tasdiqlang. Buyurtmalarni to'lamasdan yaratish jarima to'lovlarini keltirib chiqaradi va hisobingiz o'chirib qo'yilishi mumkin.",
                      btnCancelOnPress: () {},
                      btnOkOnPress: () {},
                    ).show();
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                AnimatedButton(
                  text: 'Kirish bilan tanasi',
                  color: Colors.blueGrey,
                  pressEvent: () {
                    late AwesomeDialog dialog;
                    dialog = AwesomeDialog(
                      context: context,
                      animType: AnimType.scale,
                      dialogType: DialogType.info,
                      keyboardAware: true,
                      body: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Shakl ma'lumotlari",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Material(
                              elevation: 0,
                              color: Colors.blueGrey.withAlpha(40),
                              child: TextFormField(
                                autofocus: true,
                                minLines: 1,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  labelText: 'Sarlavha',
                                  prefixIcon: Icon(Icons.text_fields),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Material(
                              elevation: 0,
                              color: Colors.blueGrey.withAlpha(40),
                              child: TextFormField(
                                autofocus: true,
                                keyboardType: TextInputType.multiline,
                                minLines: 2,
                                maxLines: null,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  labelText: 'Tavsif',
                                  prefixIcon: Icon(Icons.text_fields),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            AnimatedButton(
                              isFixedHeight: false,
                              text: 'Yopish',
                              pressEvent: () {
                                dialog.dismiss();
                              },
                            )
                          ],
                        ),
                      ),
                    )..show();
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                AnimatedButton(
                  text: "Muloqot oynasidan ma'lumotlarni qaytarish",
                  pressEvent: () async {
                    final dismissMode = await AwesomeDialog(
                      context: context,
                      dialogType: DialogType.noHeader,
                      buttonsBorderRadius: const BorderRadius.all(
                        Radius.circular(2),
                      ),
                      animType: AnimType.rightSlide,
                      title: "Ma'lumotni qaytarish",
                      titleTextStyle: const TextStyle(
                        fontSize: 32,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                      ),
                      desc: 'Dialog tavsifi bu yerda...',
                      showCloseIcon: true,
                      btnCancelOnPress: () {},
                      btnOkOnPress: () {},
                      autoDismiss: false,
                      onDismissCallback: (type) {
                        Navigator.of(context).pop(type);
                      },
                      barrierColor: Colors.purple[900]?.withOpacity(0.54),
                    ).show();

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('$dismissMode tomonidan rad etilgan'),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
