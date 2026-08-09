# 🚨 RoadSoS AI

**AI-Powered Emergency Guardian for Road Safety**

> Infinity Hacks 2026 · Road Safety Track
> Built to save lives in the Golden Hour

[![Flutter](https://img.shields.io/badge/Flutter-3.x-02569B?logo=flutter&logoColor=white)](https://flutter.dev)
[![AI](https://img.shields.io/badge/AI-Groq%20LLaMA%203.1%20%2F%20Gemini-orange)](#)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS-lightgrey)](#)

---

## 🔥 The Problem

India loses **1.5 lakh+ lives every year** to road accidents — the highest death toll in the world.

| Stat | Reality |
|---|---|
| **1.5 Lakh+** | Deaths every year on Indian roads |
| **6+ Minutes** | Average emergency response time |
| **50%** | Deaths preventable with faster help |
| **4.6 Lakh** | Accidents recorded in 2023 |

The real killer isn't the crash — it's the **delay**. When a victim is unconscious, every existing system fails at exactly the moment it matters most.

**Why today's tools don't work:**
- No automatic crash detection — someone has to consciously call for help
- Manual SOS is useless for an unconscious or panicking victim
- Responders arrive with zero medical context — blood group, allergies, conditions
- Location sharing is slow, manual, and often wrong
- No intelligent guidance during the critical first minutes

---

## 💡 Our Solution — RoadSoS AI

RoadSoS AI is an **AI-powered real-time emergency response system** that detects crashes automatically and triggers help within seconds — even when the user is unconscious and can't act.

**Mission:** Cut emergency response time from **6+ minutes to under 60 seconds.**

### How It Works

1. **Crash Detected** — Accelerometer + gyroscope sense a high-impact collision instantly
2. **Profile Fetched** — Medical data (blood group, allergies, conditions) loads automatically
3. **Alerts Sent** — SMS + WhatsApp + Call with live GPS to emergency contacts and 108/100/112
4. **AI Guidance Activated** — Real-time first-aid instructions guide bystanders or the victim
5. **Help Arrives** — Responders reach the scene with full patient context, no time lost

```
Crash / Voice / Shake Detected
        ↓
Medical Profile Loaded
        ↓
Contacts + Emergency Services Alerted (Live GPS)
        ↓
AI First-Aid Guidance Activated
        ↓
Help Arrives with Full Context
```

**From detection to full alert: under 3 seconds.**

### Triple Fail-Safe Trigger

No single point of failure — three independent ways to raise an alert:

- **Voice** — Say "Help," "Emergency," "Accident," or 5 other trigger keywords; works hands-free, even phone-locked
- **Shake** — Shake the phone 3× for an instant distress signal, no menu navigation needed
- **Crash** — Sensor fusion detects the impact and auto-fires SOS after a 10-second countdown if there's no response

---

## 🎯 Why This Wins the Road Safety Track

| Track Challenge | How RoadSoS AI Delivers |
|---|---|
| **Accident Prediction Systems** | Real-time accelerometer + gyroscope sensor fusion detects collision events the instant they happen |
| **Driver Assistance** | An always-on AI co-pilot — voice, shake, and crash triggers combine with a conversational AI safety assistant |
| **Traffic Flow Optimization** | Roadmap: AR-guided emergency navigation and live-traffic-aware ambulance routing |

Most road-safety tools stop at *prevention* or *navigation*. RoadSoS AI closes the entire loop: **Detect → Alert → Guide → Save.** That's the difference between a good idea and a system that actually reduces deaths.

---

## ⚡ Key Features

| Feature | Description |
|---|---|
| 🛡️ **Auto Crash Detection** | Accelerometer + gyroscope detect impact in real time, zero manual input needed |
| 🚨 **Instant SOS + Live Location** | Automatic SMS, WhatsApp & call alerts with precise GPS coordinates |
| 🩺 **Medical Profile Sharing** | Blood group, allergies & conditions sent automatically to responders |
| 🎙️ **Voice-Activated SOS** | Hands-free trigger — works even when the phone is locked |
| 🤖 **AI Safety Assistant** | Real-time first-aid guidance in Hindi & English, powered by Groq LLaMA 3.1 / Gemini |
| 📍 **Nearby Emergency Services** | One-tap access to the closest hospitals, police stations & ambulances |
| ☎️ **Quick Emergency Dial** | Direct one-tap calling to 108 (Ambulance), 100 (Police), 112 (Universal) |
| 🔋 **Background Protection** | Keeps working even when the app is closed |
| 🌐 **Offline Capability** | Core emergency functions run without an internet connection |

---

## 🛠️ Tech Stack

- **Frontend:** Flutter (cross-platform — Android + iOS)
- **AI:** Groq (LLaMA 3.1) + Google Gemini for conversational intelligence & triage guidance
- **Sensors:** Accelerometer + Gyroscope for crash and shake detection
- **Location:** Geolocator + Google Maps for live GPS and nearby-service lookup
- **Communication:** Native SMS, WhatsApp deep-linking, direct calling integration
- **Background Services:** Continuous crash-detection monitoring

---

## 🚀 Getting Started

```bash
# Clone the repository
git clone https://github.com/HarshParmar029/RoadSoS-AI.git
cd RoadSoS-AI/road_sos_ai

# Get dependencies
flutter pub get

# Run the app
flutter run
```

> ⚠️ For background crash detection to work reliably, enable **AutoStart** and disable **battery optimization** for the app (Settings → App Management). One-time setup — lifetime protection.

### Project Structure

```
RoadSoS-AI/
├── road_sos_ai/          # Flutter application source
│   ├── lib/               # Dart application code
│   ├── android/            # Android platform code
│   └── ios/                 # iOS platform code
├── Submission/            # Demo video & submission assets
├── index.html             # Project landing page
├── LICENSE
└── README.md
```

---

## 🎬 Demo

- **Demo Video:** https://drive.google.com/file/d/1f3khIaQDPH8u1nDQI4YUzDPpxsDhniGN/view?usp=sharing

---

## 👥 Team

**Infinity Hacks 2026 — Road Safety Track**

- Harsh Parmar
- Kakshil Adeshara
- Aum Joshi

---

## 📄 License

This project is licensed under the **MIT License** — see the [LICENSE](LICENSE) file for details.

---

<p align="center">
<b>RoadSoS AI — because every second counts.</b><br>
<i>Smart technology that detects, alerts, and responds before it's too late.</i>
</p>
