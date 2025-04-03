function satdata=readjson(d, opname)
% d = string of file location
% opname = string, operator name 
% ex. satdata = readjson('/Users/sevadjian/projects/idg1/data/active/json/0202.json', 'jenn')

jsonStr = fileread(d);
satdata = jsondecode(jsonStr);

% Rearrange to GPS related vars into Dan's two column format
satdata.lat = [satdata.gps.lat.divestart, satdata.gps.lat.diveend];
satdata.lon = [satdata.gps.lon.divestart, satdata.gps.lon.diveend];
satdata.time = [satdata.gps.time.divestart, satdata.gps.time.diveend];
satdata.eng.gps.tfix = [satdata.gps.tfix.divestart, satdata.gps.tfix.diveend];
satdata.eng.gps.nsat = [satdata.gps.nsat.divestart, satdata.gps.nsat.diveend];
satdata.eng.gps.minsnr = [satdata.gps.minsnr.divestart, satdata.gps.minsnr.diveend];
satdata.eng.gps.meansnr = [satdata.gps.meansnr.divestart, satdata.gps.meansnr.diveend];
satdata.eng.gps.maxsnr = [satdata.gps.maxsnr.divestart, satdata.gps.maxsnr.diveend];
satdata.eng.gps.hdop = [satdata.gps.hdop.divestart, satdata.gps.hdop.diveend];
satdata.eng.gps.gpsstat = [satdata.gps.gpsstat.divestart, satdata.gps.gpsstat.diveend];
satdata.eng.gps.wingstat = [satdata.gps.wingstat.divestart, satdata.gps.wingstat.diveend];
satdata.eng.gps.istat = [satdata.gps.istat.divestart, satdata.gps.istat.diveend];
satdata.qual.gps = [satdata.qual.gps.divestart, satdata.qual.gps.diveend];

