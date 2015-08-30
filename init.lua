print('Quirky Nimbus ESP-8266 firmware')
wifi.setmode(wifi.STATION)
print('set mode=STATION (mode='..wifi.getmode()..')')
print('MAC: ',wifi.sta.getmac())
print('chip: ',node.chipid())
print('heap: ',node.heap())
-- wifi config start
wifi.sta.config("Scalar24","Fb274Gh@12G1")
-- wifi config end

dofile("main.lua");
