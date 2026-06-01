function markAttendance(name)

fileName = 'attendance.csv';

if ~isfile(fileName)
    fid = fopen(fileName,'w');
    fprintf(fid,'Name,Date,Time\n');
    fclose(fid);
end

fid = fopen(fileName,'a');

fprintf(fid,'%s,%s,%s\n', ...
    name, ...
    datestr(now,'yyyy-mm-dd'), ...
    datestr(now,'HH:MM:SS'));

fclose(fid);

disp('Attendance Marked Successfully');

end