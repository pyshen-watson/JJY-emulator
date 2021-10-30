% Parameter

duration = 600; % The length of audio
f = 13300;      % The frequency of the cosine wave
fs = 48000;     % The frequentcy of the sampling rate

% Functions

time = (0:duration*fs-1)/fs;
cosine_wave = 100 * cos(2 * pi * f * time);

% Testcase
addpath('./function');
timecode1 = getTenMinuteTimeCode(2021, 10, 25, 16, 13);
timecode2 = getTenMinuteTimeCode(2020, 7, 31, 23, 58);

% Turn signal to square wave

m1 = timecodeToBits(timecode1, fs);
m2 = timecodeToBits(timecode2, fs);
output_wave1 = m1 .* cosine_wave;
output_wave2 = m2 .* cosine_wave;

% Output to files

audiowrite('./output/wave1.wav', output_wave1, fs);
audiowrite('./output/wave2.wav', output_wave2, fs);
