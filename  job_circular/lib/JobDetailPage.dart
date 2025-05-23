import 'package:flutter/material.dart';

class JobDetailPage extends StatelessWidget {
  const JobDetailPage({super.key});

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
