clc; clear; close all;

%% ✅ 1️⃣ Load Speech File
[x, fs] = audioread('lj.wav');
disp("✅ Speech File Loaded Successfully!");

%% ✅ 2️⃣ Original Audio Info
duration = length(x) / fs;
fprintf('Sampling Rate: %d Hz\n', fs);
fprintf('Duration: %.2f seconds\n', duration);

%% ✅ 3️⃣ Play Original Audio
disp("▶ Playing Original Audio...");
sound(x, fs);
pause(duration + 1);

%% ✅ 4️⃣ Simple Compression (Downsampling)
compression_factor = 2; % change 2 → 4 or 8 for more compression
compressed = x(1:compression_factor:end);
fs_new = fs / compression_factor;

%% ✅ 5️⃣ Decompression (Upsampling Back)
restored = zeros(length(x),1);
restored(1:compression_factor:end) = compressed;

%% ✅ 6️⃣ Plot Original vs Restored
t = (0:length(x)-1) / fs;

figure;
subplot(2,1,1);
plot(t, x, 'LineWidth',1);
title('Original Speech Signal');
xlabel('Time (s)'); ylabel('Amplitude'); grid on;

subplot(2,1,2);
plot(t, restored, 'LineWidth',1);
title('Restored Speech Signal After Compression');
xlabel('Time (s)'); ylabel('Amplitude'); grid on;

%% ✅ 7️⃣ Play Restored Audio
disp("▶ Playing Restored / Decompressed Audio...");
sound(restored, fs);
pause(duration + 1);

%% ✅ 8️⃣ Show Compression Result
original_size = length(x);
compressed_size = length(compressed);
compression_ratio = original_size / compressed_size;

disp("---- Compression Report ----");
fprintf('Original Samples: %d\n', original_size);
fprintf('Compressed Samples: %d\n', compressed_size);
fprintf('Compression Ratio: %.2f : 1\n', compression_ratio);
disp("----------------------------");
