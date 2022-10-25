import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page 2'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final foto = const CircleAvatar(
    backgroundImage: NetworkImage('https://lh3.googleusercontent.com/STL9blpygCc0O21oTRiM8KBMnHwCJo_1q12gsNqywuOJXpmiTKaZee2M8GGDjGdyKn2BTkE04GizxcASy3E8QN1yDtBa8j0chcJp5Jeb6jITYa9919lWbTjiZOPRolYMn4GVWwfIB210DUWOa8AXVuop8UCWUOLoI1dE7LVk4RF6pVXYeRM_TKV9xhmon2b1lzTVaqrRwGdjvhcnefWBLt2yynhzv8tTrcVg0BX1YccKG5NbqxSTSHItLBDxO5U0HfuXmNIKTFGjRNTdfEcNvJSwmp68aamXBn9wOAHN3kM23Uk4UYXJRxPl70wIX-vhw_VzgOXIAOYbtQQlI1m8f7BVW-r3imB86_MRHZUgjui9zG1eZzJ8dKXIE2acmOCDep5nGzjKc4pWx48YE-iYT6EJw8pyCxuxqQ5o4jC_ExvndquZFCVay1mn_FCuI4xCGMbNsBm0ZxUvTnT21nknxlNeWzc1PsJC1ibvJf4yONrY0TK2_EgsOHHTZh5jhYgjUkF7-nWCiDVre14QqWhthhfPzfS3mRjIWkxek_7jfTZBDfqQKDXcRSTivBHZq0vWkCs0MrjSsPRUXkeG0HNUsKZ8QYMmFBI_nkQwhAW9wBWBdeF01-urOjMuw0c_jsYBOHzbqoRgnfFJ7JubWyB2rgemmmN74XyWBQozzgNVEDL4g1HwPiFjOGDCuGdXaqI7kr-5XS50FcL_UF4vtLB9I3rSCYLWNhs8J8K1zSxfzDrw8FFS6HDsUUBS_WnZg_M7LI7Whae696I-df1UWK1FqG2d8KueL3cHozWdubxezoyjjE20mBCoAN7opQ4jpVtXNuB7scwYfy8mChSH6yxGwBjc68YOokay-1GnQ6jAGbQQXHBkzR_170ngu2PSTKzqpZJm8Qsd58vtVZETgx-gBb3S9XIEMTgAGy_eh0B8ydXF=s612-no?authuser=0'),
    radius: 150,
  );
  final nome = const Text(
    'Natasha Brandão',
    style: TextStyle(fontSize: 30),
    textAlign: TextAlign.center,
  );
  final botaoTelefone = IconButton(
    color: Color.fromARGB(255, 12, 66, 110),
    icon: const Icon(Icons.phone),
    onPressed: (){
      launchUrl(Uri(scheme: 'tel', path: '9999-9999'));

    },
  );
  final botaoEmail = IconButton(
    color: Color.fromARGB(255, 12, 66, 110),
    icon: const Icon(Icons.mail),
    onPressed: (){
      launchUrl(Uri(scheme: 'mailto', path: 'natashabrandao57@hotmail.com'));
      
    },
  );
  final botaoSMS = IconButton(
    color: Color.fromARGB(255, 12, 66, 110),
    icon: const Icon(Icons.sms),
    onPressed: (){
      launchUrl(Uri(scheme:  'sms', path: '9999-9999' ));
    },
  );
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          foto,
          nome,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              botaoTelefone, botaoEmail, botaoSMS
            ],
          ),
        ],

      )

    );
  }
 
}
