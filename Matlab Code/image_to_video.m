folder = 'E:\lifi\test videos n images\obtained frames\skt trim frames'
filePattern = fullfile(folder,'*.jpg');
f = dir(filePattern)
files = {f.name}
writerObj = VideoWriter('skt_trim1.avi');
open(writerObj)
for i=1:numel(files)
    fullFileName = fullfile(folder,files{i});
    cellArrayOfVideo{i} = imread(fullFileName);
    writeVideo(writerObj,cellArrayOfVideo{i});
end
close(writerObj);
implay('skt_trim1.avi');