function [ts,tm,te] = identify_stable_points(data,intv,pks,locs)
    ts=[];tm=[];te=[];
for i =1:size(locs,2)
    if locs(1,i) >intv
        sub_arr = data(1,locs(1,i)-intv:locs(1,i)+intv);
        tm = [tm,locs(1,i)]; % this is for the entire signal
        % I need location for the sub array and it is the mid point.
        tm_loc_sub_array = 101;
        eng_data = energy_calc(sub_arr);
    end
end


end

function locs_diff = find_locs_stable_points(sub_arr, loc_m)
    for i = 1:1:size(sub_arr,2)
       
    end
end
function eng = energy_calc(signal)
   eng = signal.^2;
end