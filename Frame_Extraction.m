% Create a VideoReader object to read the video file
obj = VideoReader('D:/Vaishnavi/008_Matlab/Images/traffic.avi'); 

% Define the name of the directory where frames will be saved
outputDir = 'frames';

% Check if the directory already exists
if ~exist(outputDir, 'dir')
    % If the directory does not exist, create it
    mkdir(outputDir);
end

% Initialize the frame index to 1
x = 1;

% Start a loop that continues until all frames in the video are processed
while hasFrame(obj)
    % Read the current frame from the video
    Vid = readFrame(obj); 
    
    % Convert the current frame index (integer) to a string
    Sx = num2str(x); 
    
    % Define the file extension for the image files
    ST = '.jpg'; 
    
    % Concatenate the frame index string with the file extension to form the filename
    Strc = strcat(Sx, ST); 
    
    % Create the full path for the output file by combining the directory path and filename
    outputFileName = fullfile(outputDir, Strc); 
    
    % Write the current frame to the output file as a JPEG image
    imwrite(Vid, outputFileName); 
    
    % Increment the frame index by 1 for the next frame
    x = x + 1; 
end
