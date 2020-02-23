Folder = 'E:\lifi\test videos n images\obtained frames\skt trim frames';
vid = VideoReader('C:\Users\asus\Documents\MATLAB\skt1.avi');
for i = 1:vid.NumberOfFrames
    frames = read(vid , i);
    imwrite(frames, fullfile(Folder, sprintf('%06d.jpg', i)));
end
FileList = dir(fullfile(Folder, '*.jpg'));
for i = 1:length(FileList)
    aFile = fullfile(Folder, FileList(i).name)
    img = imread(aFile);
end