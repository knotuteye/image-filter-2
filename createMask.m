function [BW,maskedRGBImage] = createMask(RGB,color)
%  The segmentation mask is returned in BW, and a composite of the mask and
%  original RGB images is returned in maskedRGBImage.

% Convert RGB image to chosen color space
I = rgb2hsv(RGB);

if color == "RED"
    % Define thresholds for Hue 
    hueMin = 0.942;
    hueMax = 0.042;
    
    % Define thresholds for Saturation 
    saturationMin = 0.000;
    saturationMax = 1.000;
    
    % Define thresholds for Value 
    valueMin = 0.000;
    valueMax = 1.000;
    
    % Create mask based on chosen histogram thresholds
    sliderBW = ( (I(:,:,1) >= hueMin) | (I(:,:,1) <= hueMax) ) & ...
        (I(:,:,2) >=saturationMin ) & (I(:,:,2) <=saturationMax) & ...
        (I(:,:,3) >= valueMin ) & (I(:,:,3) <= valueMax);
    BW = sliderBW;
end

if color == "ORANGE"
    hueMin = 1.000;
    hueMax = 0.133;
    
    % Define thresholds for Saturation 
    saturationMin = 0.000;
    saturationMax = 1.000;
    
    % Define thresholds for Value 
    valueMin = 0.000;
    valueMax = 1.000;
    
    % Create mask based on chosen histogram thresholds
    sliderBW = ( (I(:,:,1) >= hueMin) | (I(:,:,1) <= hueMax) ) & ...
        (I(:,:,2) >=saturationMin ) & (I(:,:,2) <=saturationMax) & ...
        (I(:,:,3) >= valueMin ) & (I(:,:,3) <= valueMax);
    BW = sliderBW;
end

if color == "YELLOW"
    % Define thresholds for Hue 
    hueMin = 0.140;
    hueMax = 0.228;
    
    % Define thresholds for Saturation 
    saturationMin = 0.000;
    saturationMax = 1.000;
    
    % Define thresholds for Value 
    valueMin = 0.000;
    valueMax = 1.000;
    
    % Create mask based on chosen histogram thresholds
    sliderBW = (I(:,:,1) >= hueMin ) & (I(:,:,1) <= hueMax) & ...
        (I(:,:,2) >=saturationMin ) & (I(:,:,2) <=saturationMax) & ...
        (I(:,:,3) >= valueMin ) & (I(:,:,3) <= valueMax);
    
    BW = sliderBW;
    
end

if color == "GREEN"
      
    % Define thresholds for Hue 
    hueMin = 0.213;
    hueMax = 0.487;
    
    % Define thresholds for Saturation 
    saturationMin = 0.000;
    saturationMax = 1.000;
    
    % Define thresholds for Value 
    valueMin = 0.000;
    valueMax = 1.000;
    
    % Create mask based on chosen histogram thresholds
    sliderBW = (I(:,:,1) >= hueMin ) & (I(:,:,1) <= hueMax) & ...
        (I(:,:,2) >=saturationMin ) & (I(:,:,2) <=saturationMax) & ...
        (I(:,:,3) >= valueMin ) & (I(:,:,3) <= valueMax);
    BW = sliderBW;
end

if color == "BLUE"
    hueMin = 0.494;
    hueMax = 0.782;
    
    % Define thresholds for Saturation 
    saturationMin = 0.000;
    saturationMax = 1.000;
    
    % Define thresholds for Value 
    valueMin = 0.000;
    valueMax = 1.000;
    
    % Create mask based on chosen histogram thresholds
    sliderBW = (I(:,:,1) >= hueMin ) & (I(:,:,1) <= hueMax) & ...
        (I(:,:,2) >=saturationMin ) & (I(:,:,2) <=saturationMax) & ...
        (I(:,:,3) >= valueMin ) & (I(:,:,3) <= valueMax);
    BW = sliderBW;
end

if color == "VIOLET"
    % Define thresholds for Hue 
    hueMin = 0.768;
    hueMax = 0.942;
    
    % Define thresholds for Saturation 
    saturationMin = 0.000;
    saturationMax = 1.000;
    
    % Define thresholds for Value 
    valueMin = 0.000;
    valueMax = 1.000;
    
    % Create mask based on chosen histogram thresholds
    sliderBW = (I(:,:,1) >= hueMin ) & (I(:,:,1) <= hueMax) & ...
        (I(:,:,2) >= saturationMin ) & (I(:,:,2) <= saturationMax) & ...
        (I(:,:,3) >= valueMin ) & (I(:,:,3) <= valueMax);
    BW = sliderBW;
end

% Initialize output masked image based on input image.
maskedRGBImage = RGB;

% Set background pixels where BW is false to zero.
maskedRGBImage(repmat(~BW,[1 1 3])) = 0;

end
