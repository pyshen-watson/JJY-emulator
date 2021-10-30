function [Year, Day, Weekday, Hour, Minute] = datetimeToInt(DT)
    Year = mod(DT.Year, 100);
    Day = datenum(DT.Year,DT.Month,DT.Day) - datenum(DT.Year,1,1) + 1;
    Weekday = weekday(DT)-1;
    Hour = DT.Hour;
    Minute = DT.Minute;
end