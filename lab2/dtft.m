clear;

function H_mag_dB = fir_filter(f)
    fs = 8000;
    H = 0.0833+0.2500*exp(-i*2*pi*f*1/fs)+0.3333*exp(-i*2*2*pi*f*1/fs)+0.2500*exp(-i*2*3*pi*f*1/fs)+0.0833*exp(-i*2*4*pi*f*1/fs);
    H_mag = abs(H);
    H_mag_dB = 20*log10(H_mag)
;endfunction

disp(strcat("f = 0 Hz: ", num2str(fir_filter(0))));
disp(strcat("f = 500 Hz: ", num2str(fir_filter(500))));
disp(strcat("f = 1 kHz: ", num2str(fir_filter(1000))));
disp(strcat("f = 1.5 kHz: ", num2str(fir_filter(1500))));
disp(strcat("f = 2 kHz: ", num2str(fir_filter(2000))));
disp(strcat("f = 2.5 kHz: ", num2str(fir_filter(2500))));
disp(strcat("f = 3 kHz: ", num2str(fir_filter(3000))));
disp(strcat("f = 3.5 kHz: ", num2str(fir_filter(3500))));
disp(strcat("f = 4 kHz: ", num2str(fir_filter(4000))));
disp(strcat("f = 4.5 kHz: ", num2str(fir_filter(4500))));
disp(strcat("f = 5 kHz: ", num2str(fir_filter(5000))));
disp(strcat("f = 5.5 kHz: ", num2str(fir_filter(5500))));

