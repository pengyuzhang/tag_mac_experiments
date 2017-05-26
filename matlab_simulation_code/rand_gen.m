clear;clc;close all;

counter = 0;
for round=1:25
    num_tag = 8;
    num_slot = 8;

    slot = zeros(1,num_slot);

    tmp = randi(num_slot,1,num_tag);

    for index=1:num_tag
        slot(tmp(index)) = bitor(slot(tmp(index)),2^(index-1));
    end

    for index=1:num_slot
         fprintf('tag_order_mem[%d]<=20''d%d;\n',counter,slot(index));
         counter = counter+1;
    end
end