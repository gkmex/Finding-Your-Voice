%This script leads the user through the process of exploring the human voice 
%and discovering their own individual vocal characteristics.

%Initialization of parameters
sweepTime = 5; 
gain = 0.1; 
fs = 44100; 

%Set up the figure for visualization
hFig = figure;
set(hFig, 'Position', [400 400 600 600]);

%Prompt the user to start the process 
answer = input('Would you like to start exploring your voice? Y/N ', 's');

if strcmp(answer, 'Y')
    
    disp('Performing initial shaping and normalization of voice...');
    
    %Shape and normalize the voice
    x = masterNormalize(); 

while 1
   
    %Run the sweep and take playback
    [y, t] = sweep(x, fs, gain, sweepTime);
    [x_p, fs_p] = recordPlayback(y, fs, sweepTime); 
    
    %Normalize the speech signal
    x_norm = normalizeSpeech(x_p);

    %Apply the time-frequency analysis
    [S, F, T] = spectrogram(x_norm, 1024, 1024/2, [], fs);
    
    %Plot the frequency spectrum of the voice
    subplot(2,1,1);
    imagesc(T, F, 10*log10(S));
    axis xy
    xlabel('Time (s)')
    ylabel('Frequency (Hz)')
    title('Spectrogram of Input Voice')
    
    %Plot the time-domain waveform
    subplot(2,1,2);
    plot(t,y);
    xlabel('Time (s)')
    ylabel('Amplitude (dB)')
    title('Time-Domain Waveform of Input Voice')
    
    %Prompt the user to continue exploring
    answer2 = input('Would you like to continue exploring your voice? Y/N ', 's');
    
    if strcmp(answer2, 'Y')
        continue;
    else
        break;
    end
    
end

disp('Thank you for exploring your voice!');

else
    disp('Thank you for your interest!'); 
end

%Function for initial shaping and normalization of the voice
function x = masterNormalize()

fs = 44100;
lengthSignal = 2;
x = rand(fs*lengthSignal,1); 
x = normalizeSignal(x);

end

%Function for applying the sweep, taking playback, and normalizing the signal
function [x_norm, fs_p] = normalizeSpeech(x_p)

fs_p = 44100;
lengthSignal = 2;

%Normalization of the voice signal 
x_norm = normalizeSignal(x_p); 

end

%Function for normalizing any given signal 
function x_norm = normalizeSignal(x)

maximum = max(abs(x));
x_norm = x./maximum;

end

%Function for sweeping the signal, taking playback, normalizing, and plotting
function [y, t] = sweep(x, fs, gain, sweepTime)

y = x.*gain;
t = [0:1/fs:(sweepTime-1/fs)];

end

%Function for recording the playback and plotting the spectrum
function [x_p, fs_p] = recordPlayback(y, fs, sweepTime)

fs_p = 44100;
lengthSignal = 2;
x_p = zeros(lengthSignal*fs_p,1);
recObj = audiorecorder(fs_p, 16, 1);

recordblocking(recObj, sweepTime);
x_p = getaudiodata(recObj);

end