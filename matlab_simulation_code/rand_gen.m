clear;clc;close all;

empty_slots = 0;
used_slots = 0;
collision_slots = 0;

counter = 0;
for round=1:250
    num_tag = 4;
    num_slot = 8;

    slot = zeros(1,num_slot);

    tmp = randi(num_slot,1,num_tag);
    
    for idx = 1:num_slot
        if sum(tmp==idx)==0
            empty_slots = empty_slots+1;
        elseif sum(tmp==idx)==1
            used_slots = used_slots+1;
        else
            collision_slots = collision_slots+1;
        end
    end

    for index=1:num_tag
        slot(tmp(index)) = bitor(slot(tmp(index)),2^(index-1));
    end
    
    for index=1:num_slot
         fprintf('tag_order_mem[%d]<=20''d%d;\n',counter,slot(index));
         counter = counter+1;
    end
end

empty_slots
used_slots
collision_slots