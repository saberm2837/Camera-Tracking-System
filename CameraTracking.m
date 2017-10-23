function [Pan Tilt] = CameraTracking()
% Developing a fuzzy inference system(FIS) to simulate the camera tracking system
    Range = [100; 200; 50; 101; 200; 0; 100];
    Horizontal_Pos = [85; 150; 30; 150; 0; 170; 85];
    Vertical_Pos = [100; 20; 53; 20; 0; 170; 85];
    fis1 = readfis('CamScale');
    Scale = evalfis(Range,fis1); 
    fis2 = readfis('CamPanTilt');
    [Pan Tilt] = evalfis([Scale Horizontal_Pos Vertical_Pos],fis2); 
end

