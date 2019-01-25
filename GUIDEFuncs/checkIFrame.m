% Validator function for individual frames
function bool = checkIFrame(time, title)
    if ~isnan(time) && ~mod(time,2) && ischar(title)
        bool = 1; 
    else
        bool = 0;
    end
end