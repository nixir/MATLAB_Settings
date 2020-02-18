function [status, msg ] = svg2pdf(fileToConvert)
% svg2pdf 
%   REQUIRE INKSCAPE
%   hoge 0->filetoconvert
%   hoge.svg -> hoge.pdf

command = strcat('"inkscape" ', {' '}, '"', fileToConvert,'.svg" --export-pdf="', fileToConvert, '.pdf" --export-pdf-version=1.5 --export-area-drawing');
command = string(command);
[ status, msg ] = system(command); % Run command prompt - return variable to suppress output text
end

