function [status, msg ] = svg2pdf(fileToConvert)
% svg2pdf 
%   REQUIRE INKSCAPE
%   hoge -> filetoconvert
%   hoge.svg -> hoge.pdf
%   https://jp.mathworks.com/matlabcentral/answers/23511-save-a-figure-to-pdf-or-eps-with-non-standard-fonts#answer_313770

command = strcat('"inkscape" ', {' '}, '"', fileToConvert,'.svg" --export-pdf="', fileToConvert, '.pdf" --export-pdf-version=1.5 --export-area-drawing');
command = string(command);
[ status, msg ] = system(command); % Run command prompt - return variable to suppress output text
end

