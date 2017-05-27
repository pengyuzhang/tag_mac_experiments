clear;clc;close all;

data = load(['timing_trace.csv']);

[rown, coln] = size(data);

on_time = 0;
off_time = 0;
for index=1:rown-2
    if data(index,2)==1
        on_time = on_time+data(index+1,1)-data(index,1);
    else
        off_time = off_time+data(index+1,1)-data(index,1);
    end
end

on_time
off_time