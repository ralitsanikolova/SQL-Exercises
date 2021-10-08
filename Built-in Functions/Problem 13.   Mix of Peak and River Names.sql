SELECT Peaks.PeakName, Rivers.RiverName,
 CONCAT(LOWER(Peaks.PeakName), SUBSTRING (LOWER(Rivers.RiverName),2,LEN(Rivers.RiverName))) AS Mix
FROM Rivers,Peaks
WHERE SUBSTRING(Peaks.PeakName , LEN(Peaks.PeakName),1) =SUBSTRING(Rivers.RiverName,1,1)
ORDER BY Mix










