import 'package:flutter/material.dart';

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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    appBar: AppBar(
    backgroundColor: Colors.blue[100],
    elevation: 0,
    toolbarHeight: 0, // hides the AppBar
    ),
    body: Column(
    children: [
    Container(
    color: Colors.blue[100],
    padding: const EdgeInsets.all(16),
    child: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    const Icon(Icons.business, size: 40, color: Colors.white),
    const SizedBox(width: 10),
    Expanded(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const [
    Text(
    'Software Development (Information Technology)',
    style: TextStyle(fontSize: 14, color: Colors.blueAccent),
    ),
    SizedBox(height: 4),
    Text(
    'Flutter Developer',
    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    Text('Job No#: 321NLF'),
    Text('Deadline: 04 Jun, 2025'),
    ],
    ),
    )
    ],
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(16),
    child: Column(
    children: [
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: const [
    Text('Salary\n100,000 - 130,000 BDT\n(negotiable)', style: TextStyle(fontWeight: FontWeight.bold)),
    Text('Experience\nExperienced Only (3 years)'),
    ],
    ),
    const SizedBox(height: 10),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: const [
    Text('Time\nFull time'),
    Text('Education\nBachelors'),
    ],
    ),
    const SizedBox(height: 10),
    Row(
    children: [
    OutlinedButton.icon(
    onPressed: () {},
    icon: const Icon(Icons.work_outline),
    label: const Text('Vacancy 5'),
    ),
    const SizedBox(width: 10),
    OutlinedButton.icon(
    onPressed: () {},
    icon: const Icon(Icons.share_outlined),
    label: const Text('Share'),
    )
    ],
    )
    ],
    ),
    ),
    Expanded(
    child: SingleChildScrollView(
    padding: const EdgeInsets.all(16),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const [
    Text('Description', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
    SizedBox(height: 5),
    Text(
    'A leading technology company is hiring a Flutter Developer through the Niyog hiring platform. This opportunity is ideal for developers passionate about building mobile apps. Additionally, the role involves collaborating with cross-functional teams to develop and deploy architecturally sound Android and iOS applications using Flutter.',
    ),
    SizedBox(height: 20),
    Text('Responsibilities', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
    SizedBox(height: 5),
    Text('• Develop, test, and deploy high-quality mobile applications using Flutter for both Android and iOS.'),
    ],
    ),
    ),
    )
    ],
    ),
    );
  }
}
