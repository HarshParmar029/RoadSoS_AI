import 'package:flutter_callkit_incoming/entities/entities.dart';
import 'package:flutter_callkit_incoming/flutter_callkit_incoming.dart';
import 'package:shake/shake.dart';
import 'package:vibration/vibration.dart';
import 'package:uuid/uuid.dart';           // ← Yeh import add kiya
import 'package:flutter/material.dart';

class FakeCallService {
  ShakeDetector? _shakeDetector;
  bool _isShakeEnabled = true;

  final Uuid _uuid = const Uuid();

  // Shake to SOS
  void startShakeDetection(BuildContext context) {
    _shakeDetector = ShakeDetector.autoStart(
      onPhoneShake: () {
        if (_isShakeEnabled) {
          _triggerEmergency(context);
        }
      },
      shakeThresholdGravity: 2.7,
      shakeSlopTimeMS: 500,
      shakeCountResetTime: 3000,
      minimumShakeCount: 2,
    );
  }

  void stopShakeDetection() {
    _shakeDetector?.stopListening();
  }

  void toggleShake(bool value) {
    _isShakeEnabled = value;
  }

  Future<void> _triggerEmergency(BuildContext context) async {
    if (await Vibration.hasVibrator() ?? false) {
      Vibration.vibrate(duration: 500, amplitude: 255);
    }

    await showTestEmergencyCall();

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('🚨 EMERGENCY ACTIVATED! Shake detected.'),
        backgroundColor: Colors.red,
        duration: Duration(seconds: 3),
      ),
    );
  }

  Future<void> showTestEmergencyCall() async {
    final String callId = _uuid.v4();

    final CallKitParams callKitParams = CallKitParams(
      id: callId,
      nameCaller: "108 - RoadSoS Emergency",
      appName: "RoadSoS AI",
      handle: "108",
      type: 0,
      textAccept: "Accept & Navigate",
      textDecline: "Decline",
      duration: 60000,
      missedCallNotification: const NotificationParams(
        showNotification: true,
        isShowCallback: true,
      ),
    );

    await FlutterCallkitIncoming.showCallkitIncoming(callKitParams);
  }
}