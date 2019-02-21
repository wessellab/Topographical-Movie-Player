function resetCallback(~,~,hAxes,settings)

    % Reset frame counter to 1
    global framenum;
    framenum = 1;
    
    % Display input video frame on axis
    if all(settings.matlab == '(R2018a)') || all(settings.matlab == '(R2018b)')
        showFrameOnAxis(hAxes.axis1, settings.anim{framenum});
    else
        showFrameOnAxis(hAxes.axis1, settings.anim(framenum).cdata);
    end
        
    % Reset title
    hAxes.ui1.String = ['Frame ' num2str(framenum) ' : Time Lapsed ' num2str(frame2time(settings,framenum)) 'ms'];
    
    % Reset progress bar
    status = framenum/length(settings.anim); % get length of loaded frames
    uiProgressBar(settings,hAxes.pBar,status); % update bar length
    
end