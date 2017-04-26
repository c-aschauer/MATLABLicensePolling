function LicensePolling(name)
clc;
tStart = tic;
status = 0;
counter = 0;
pauseSecs = 5;
disp(['Starting ' name ' license checkout polling...']);
while status == 0
	[status,errmsg] = license('checkout',name);
    if status == 0
      counter = counter + 1;
      disp(['failed tries: ' num2str(counter)]);
      pause(pauseSecs);
    end
end
disp([name ' license checkout successful!']);
tEnd = toc(tStart);
disp(['it only took ' num2str(floor(tEnd/60)) ' minutes and ' num2str(rem(tEnd,60)) ' seconds!']);
end
