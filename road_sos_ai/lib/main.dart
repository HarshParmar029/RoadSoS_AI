import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'features/emergency/fake_call_service.dart';

void main() {
  runApp(const RoadSoSApp());
}

class RoadSoSApp extends StatelessWidget {
  const RoadSoSApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<FakeCallService>(create: (_) => FakeCallService()),
      ],
      child: MaterialApp(
        title: 'RoadSoS AI',
        theme: ThemeData.dark(useMaterial3: true),
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _shakeEnabled = true;

  @override
  void initState() {
    super.initState();
    final fakeCallService = Provider.of<FakeCallService>(context, listen: false);
    fakeCallService.startShakeDetection(context);
  }

  @override
  void dispose() {
    final fakeCallService = Provider.of<FakeCallService>(context, listen: false);
    fakeCallService.stopShakeDetection();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final fakeCallService = Provider.of<FakeCallService>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('RoadSoS AI - Emergency Guardian'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.emergency, size: 120, color: Colors.red),
            const SizedBox(height: 30),
            const Text(
              'Road Safety Hackathon 2026',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              'IIT Madras - BIMSTEC',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            const SizedBox(height: 50),
            
            // Test Button
            ElevatedButton.icon(
              onPressed: () => fakeCallService.showTestEmergencyCall(),
              icon: const Icon(Icons.call, size: 28),
              label: const Text('🚨 TEST EMERGENCY CALL'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 30),

            // Shake Toggle
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Shake to SOS"),
                Switch(
                  value: _shakeEnabled,
                  onChanged: (value) {
                    setState(() => _shakeEnabled = value);
                    fakeCallService.toggleShake(value);
                  },
                ),
              ],
            ),

            const SizedBox(height: 20),
            const Text(
              'Demo: Shake phone or press button\nFull screen 108 Ambulance call',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}