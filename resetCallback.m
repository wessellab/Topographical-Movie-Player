function resetCallback(~,~,hAxes,settings)

    % Reset frame counter to 1
    global framenum;
    framenum = 1;
    
    % Display input video frame on axis
    showFrameOnAxis(hAxes.axis1, settings.anim{framenum});
        
    % Reset title
    hAxes.ui1.String = ['Frame ' num2str(framenum) ' : Time Lapsed ' num2str(frame2time(settings.srate,framenum)) 'ms'];
    
end