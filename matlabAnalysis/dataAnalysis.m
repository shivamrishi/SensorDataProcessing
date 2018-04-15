mode_value_hxh = zeros(1,32);
mode_value_hyh = zeros(1,32);
average_value_hxh = zeros(1,32);
average_value_hyh = zeros(1,32);
for u = 1:32
mode_value_hxh(1,u) = mode(magData(:,2,u));
end

for u = 1:32
    mode_value_hyh(1,u) = mode(magData(:,4,u));
end

for u = 1:32
average_value_hxh(1,u) = mean(magData(:,2,u));
end

for u = 1:32
average_value_hyh(1,u) = mean(magData(:,4,u));
end


v = 0:11.25:348.75; %x axis set
figure(1);
stem(v, mode_value_hxh); 
ylabel('modeHxh');
%ax = gca;
%set(gca, 'XTick', v);
figure(2);
stem(v, mode_value_hyh); 
ylabel('modeHyh');
%ax = gca;
%set(gca, 'XTick', v);
figure(3);
stem(average_value_hxh);
ylabel('averageHxh');
%ax = gca;
%set(gca, 'XTick', v);
figure(4);
stem(average_value_hyh);
ylabel('averageHxh');
%ax = gca;
%set(gca, 'XTick', v);