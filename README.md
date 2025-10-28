# Speech Signal Compression Using MATLAB

## 📌 Project Overview
This project demonstrates a basic speech compression technique using downsampling in MATLAB. It focuses on reducing the number of audio samples to minimize storage size while keeping the speech understandable.

## 🎯 Objectives
- Load and analyze a speech audio signal
- Compress the audio using downsampling
- Restore the signal using upsampling
- Compare waveforms and playback quality
- Calculate compression performance

## 🧠 Methodology
1. Load audio file
2. Remove every 2nd sample (downsampling)
3. Restore original length by inserting zeros (upsampling)
4. Plot original vs restored signals
5. Play both signals and analyze differences
6. Evaluate compression ratio

## ✅ Key Results
| Parameter | Value |
|----------|-------|
| Compression Factor | 2 |
| Compression Ratio | 2:1 |
| Data Reduction | 50% |
| Observations | Slight distortion in audio |

## 📚 Tools & Technologies
- MATLAB
- Digital Signal Processing
- Audio Analysis

## 🌍 Applications
- Mobile communication (VoIP)
- Speech storage/streaming
- Hearing aid technology
- Digital phones

## 🔍 Conclusion
A simple and effective compression model was implemented successfully. Even though the audio quality slightly decreases, the storage is reduced significantly, showing the balance between compression and clarity.

