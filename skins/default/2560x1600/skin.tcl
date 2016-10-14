set ::skindebug 0

#add_de1_variable "off" 20 1330 -justify left -anchor "nw" -font Helv_8 -text "" -fill "#42465c" -width 520 -textvariable {[accelerometer_angle_text]} 


##############################################################################################################################################################################################################################################################################
# the STEAM button and translatable text for it

if {[has_flowmeter] == 0} {

	add_de1_text "steam" 2048 1076 -text [translate "STEAM"] -font Helv_10_bold -fill "#2d3046" -anchor "center" 
	add_de1_variable "steam" 2048 1136 -text "" -font Helv_9_bold -fill "#7f879a" -anchor "center" -textvariable {"[translate [de1_substate_text]]"} 

	# variables to display during steam
	add_de1_text "steam" 2053 1176 -justify right -anchor "ne" -text [translate "Elapsed:"] -font Helv_8 -fill "#7f879a" -width 520
	add_de1_variable "steam" 2058 1176 -justify left -anchor "nw" -font Helv_8 -text "-" -fill "#42465c" -width 520 -textvariable {[timer_text]} 
	add_de1_text "steam" 2053 1226 -justify right -anchor "ne" -text [translate "Auto-Off:"] -font Helv_8 -fill "#7f879a" -width 520
	add_de1_variable "steam" 2058 1226 -justify left -anchor "nw" -font Helv_8 -text "-" -fill "#42465c" -width 520 -textvariable {[setting_steam_max_time_text]} 
	add_de1_text "steam" 2053 1276 -justify right -anchor "ne" -text [translate "Steam Temp:"] -font Helv_8 -fill "#7f879a" -width 520
	add_de1_variable "steam" 2058 1276 -justify left -anchor "nw" -font Helv_8 -text "-" -fill "#42465c" -width 520 -textvariable {[steamtemp_text]} 
	add_de1_text "steam" 2053 1326 -justify right -anchor "ne" -text [translate "Pressure:"] -font Helv_8 -fill "#7f879a" -width 520
	add_de1_variable "steam" 2058 1326 -justify left -anchor "nw" -font Helv_8 -text "-" -fill "#42465c" -width 520 -textvariable {[pressure_text]} 

} else {
	add_de1_text "steam" 1790 640 -text [translate "STEAM"] -font Helv_15_bold -fill "#2d3046" -anchor "nw" 
	add_de1_variable "steam" 1790 700 -text "" -font Helv_9_bold -fill "#7f879a" -anchor "nw" -textvariable {[translate [de1_substate_text]]} 

	# variables to display during steam
	add_de1_text "steam" 1790 800 -justify right -anchor "nw" -text [translate "Time"] -font Helv_8_bold -fill "#5a5d75" -width 520

	add_de1_text "steam" 1790 850 -justify right -anchor "nw" -text [translate "Elapsed:"] -font Helv_8 -fill "#7f879a" -width 520
	add_de1_variable "steam" 2310 850 -justify left -anchor "ne" -font Helv_8 -text "-" -fill "#42465c" -width 520 -textvariable {[timer][translate "s"]} 
	add_de1_text "steam" 1790 900 -justify right -anchor "nw" -text [translate "Auto-Off:"] -font Helv_8 -fill "#7f879a" -width 520
	add_de1_variable "steam" 2310 900 -justify left -anchor "ne" -font Helv_8 -text "-" -fill "#42465c" -width 520 -textvariable {[setting_steam_max_time][translate "s"]} 

	add_de1_text "steam" 1790 1000 -justify right -anchor "nw" -text [translate "Characteristics"] -font Helv_8_bold -fill "#5a5d75" -width 520
	add_de1_text "steam" 1790 1050 -justify right -anchor "nw" -text [translate "Steam Temp:"] -font Helv_8 -fill "#7f879a" -width 520
	add_de1_variable "steam" 2310 1050 -justify left -anchor "ne" -font Helv_8 -text "-" -fill "#42465c" -width 520 -textvariable {[steamtemp_text]} 
	add_de1_text "steam" 1790 1100 -justify right -anchor "nw" -text [translate "Pressure:"] -font Helv_8 -fill "#7f879a" -width 520
	add_de1_variable "steam" 2310 1100 -justify left -anchor "ne" -font Helv_8 -text "-" -fill "#42465c" -width 520 -textvariable {[pressure_text]} 

	add_de1_text "steam" 1790 1150 -justify right -anchor "nw" -text [translate "Flow rate:"] -font Helv_8 -fill "#7f879a" -width 520
	add_de1_variable "steam" 2310 1150 -justify left -anchor "ne" -text "" -font Helv_8 -fill "#42465c" -width 520 -textvariable {[waterflow_text]} 
	add_de1_text "steam" 1790 1200 -justify right -anchor "nw" -text [translate "Volume:"] -font Helv_8 -fill "#7f879a" -width 520
	add_de1_variable "steam" 2310 1200 -justify left -anchor "ne" -text "" -font Helv_8 -fill "#42465c" -width 520 -textvariable {[watervolume_text]} 
}


# 
#add_de1_action "steam" "do_steam"
# when it steam mode, tapping anywhere on the screen tells the DE1 to stop.
add_de1_button "steam" "start_idle" 0 0 2560 1600

# STEAM related info to display when the espresso machine is idle
add_de1_text "off" 2048 1076 -text [translate "STEAM"] -font Helv_10_bold -fill "#2d3046" -anchor "center" 
add_de1_text "off" 2053 1156 -justify right -anchor "ne" -text [translate "Auto-Off:"] -font Helv_8 -fill "#7f879a" -width 520
add_de1_variable "off" 2058 1156 -justify left -anchor "nw" -font Helv_8 -text "-" -fill "#42465c" -width 520 -textvariable {[setting_steam_max_time_text]} 
add_de1_text "off" 2053 1206 -justify right -anchor "ne" -text [translate "Steam Temp:"] -font Helv_8 -fill "#7f879a" -width 520
add_de1_variable "off" 2058 1206 -justify left -anchor "nw" -font Helv_8 -text "-" -fill "#42465c" -width 520 -textvariable {[setting_steam_temperature_text]} 
add_de1_variable "off" 2053 1256 -justify right -anchor "ne" -text "" -font Helv_8 -fill "#7f879a" -width 520 -textvariable {[steam_heater_action_text]} 
add_de1_variable "off" 2058 1256 -justify left -anchor "nw" -font Helv_8 -text "" -fill "#42465c" -width 520 -textvariable {[steam_heater_temperature_text]} 

# when someone taps on the steam button
add_de1_button "off" "start_steam" 1748 616 2346 1414

##############################################################################################################################################################################################################################################################################
# the ESPRESSO button and translatable text for it

if {[has_flowmeter] == 0} {

	add_de1_text "espresso" 1280 1076 -text [translate "ESPRESSO"] -font Helv_10_bold -fill "#2d3046" -anchor "center" 
	add_de1_variable "espresso" 1280 1136 -text "" -font Helv_9_bold -fill "#7f879a" -anchor "center" -textvariable {"[translate [de1_substate_text]]"} 


	add_de1_text "espresso" 1280 1176 -justify right -anchor "ne" -text [translate "Elapsed:"] -font Helv_8 -fill "#7f879a" -width 520
	add_de1_variable "espresso" 1400 1176 -justify left -anchor "nw" -text "" -font Helv_8 -fill "#42465c" -width 520 -textvariable {[timer][translate "s"]} 

	add_de1_text "espresso" 1280 1226 -justify right -anchor "ne" -text [translate "Auto-Off:"] -font Helv_8 -fill "#7f879a" -width 520
	add_de1_variable "espresso" 1280 1226 -justify left -anchor "nw" -text "" -font Helv_8  -fill "#42465c" -width 520 -textvariable {[setting_espresso_max_time][translate "s"]} 

	add_de1_text "espresso" 1280 1276 -justify right -anchor "ne" -text [translate "Preinfusion:"] -font Helv_8 -fill "#7f879a" -width 520
	add_de1_variable "espresso" 1280 1276 -justify left -anchor "nw" -text "" -font Helv_8  -fill "#42465c" -width 520 -textvariable {[setting_espresso_max_time][translate "s"]} 

	add_de1_text "espresso" 1280 1326 -justify right -anchor "ne" -text [translate "Pouring:"] -font Helv_8 -fill "#7f879a" -width 520
	add_de1_variable "espresso" 1280 1326 -justify left -anchor "nw" -text "" -font Helv_8  -fill "#42465c" -width 520 -textvariable {[setting_espresso_max_time][translate "s"]} 

	add_de1_text "espresso" 1280 1376 -justify right -anchor "ne" -text [translate "Pressure:"] -font Helv_8 -fill "#7f879a" -width 520
	add_de1_variable "espresso" 1280 1376 -justify left -anchor "nw" -text "" -font Helv_8 -fill "#42465c" -width 520 -textvariable {[pressure_text]} 
	add_de1_text "espresso" 1280 1426 -justify right -anchor "ne" -text [translate "Basket Temp:"] -font Helv_8 -fill "#7f879a" -width 520
	add_de1_variable "espresso" 1280 1426 -justify left -anchor "nw" -text "" -font Helv_8 -fill "#42465c" -width 520 -textvariable {[watertemp_text]} 
	add_de1_text "espresso" 1280 1476 -justify right -anchor "ne" -text [translate "Mix Temp:"] -font Helv_8 -fill "#7f879a" -width 520
	add_de1_variable "espresso" 1280 1476 -justify left -anchor "nw" -text "" -font Helv_8 -fill "#42465c" -width 520 -textvariable {[watertemp_text]} 

} else {

	add_de1_text "espresso" 980 620 -text [translate "ESPRESSO"] -font Helv_15_bold -fill "#2d3046" -anchor "nw" 
	add_de1_variable "espresso" 980 680 -text "" -font Helv_9_bold -fill "#7f879a" -anchor "nw" -textvariable {[translate [de1_substate_text]]} 

	add_de1_text "espresso" 980 800 -justify right -anchor "nw" -text [translate "Time"] -font Helv_8_bold -fill "#5a5d75" -width 520

	add_de1_text "espresso" 980 850 -justify right -anchor "nw" -text [translate "Elapsed:"] -font Helv_8 -fill "#7f879a" -width 520
	add_de1_variable "espresso" 1570 850 -justify left -anchor "ne" -text "" -font Helv_8 -fill "#42465c" -width 520 -textvariable {[timer][translate "s"]} 

	add_de1_text "espresso" 980 900 -justify right -anchor "nw" -text [translate "Auto-Off:"] -font Helv_8 -fill "#7f879a" -width 520
	add_de1_variable "espresso" 1570 900 -justify left -anchor "ne" -text "" -font Helv_8  -fill "#42465c" -width 520 -textvariable {[setting_espresso_max_time][translate "s"]} 

	add_de1_text "espresso" 980 950 -justify right -anchor "nw" -text [translate "Preinfusion:"] -font Helv_8 -fill "#7f879a" -width 520
	add_de1_variable "espresso" 1570 950 -justify left -anchor "ne" -text "" -font Helv_8  -fill "#42465c" -width 520 -textvariable {4[translate "s"]} 

	add_de1_text "espresso" 980 1000 -justify right -anchor "nw" -text [translate "Pouring:"] -font Helv_8 -fill "#7f879a" -width 520
	add_de1_variable "espresso" 1570 1000 -justify left -anchor "ne" -text "" -font Helv_8  -fill "#42465c" -width 520 -textvariable {0[translate "s"]} 


	add_de1_text "espresso" 980 1100 -justify right -anchor "nw" -text [translate "Characteristics"] -font Helv_8_bold -fill "#5a5d75" -width 520

	add_de1_text "espresso" 980 1150 -justify right -anchor "nw" -text [translate "Pressure:"] -font Helv_8 -fill "#7f879a" -width 520
	add_de1_variable "espresso" 1570 1150 -justify left -anchor "ne" -text "" -font Helv_8 -fill "#42465c" -width 520 -textvariable {[pressure_text]} 
	add_de1_text "espresso" 980 1200 -justify right -anchor "nw" -text [translate "Basket Temp:"] -font Helv_8 -fill "#7f879a" -width 520
	add_de1_variable "espresso" 1570 1200 -justify left -anchor "ne" -text "" -font Helv_8 -fill "#42465c" -width 520 -textvariable {[watertemp_text]} 
	add_de1_text "espresso" 980 1250 -justify right -anchor "nw" -text [translate "Mix Temp:"] -font Helv_8 -fill "#7f879a" -width 520
	add_de1_variable "espresso" 1570 1250 -justify left -anchor "ne" -text "" -font Helv_8 -fill "#42465c" -width 520 -textvariable {[watertemp_text]} 


	add_de1_text "espresso" 980 1300 -justify right -anchor "nw" -text [translate "Flow rate:"] -font Helv_8 -fill "#7f879a" -width 520
	add_de1_variable "espresso" 1570 1300 -justify left -anchor "ne" -text "" -font Helv_8 -fill "#42465c" -width 520 -textvariable {[waterflow_text]} 
	add_de1_text "espresso" 980 1350 -justify right -anchor "nw" -text [translate "Volume:"] -font Helv_8 -fill "#7f879a" -width 520
	add_de1_variable "espresso" 1570 1350 -justify left -anchor "ne" -text "" -font Helv_8 -fill "#42465c" -width 520 -textvariable {[watervolume_text]} 
}

add_de1_button "espresso" "start_idle" 0 0 2560 1600

#add_btn_screen "espresso" "stop"
#add_de1_action "espresso" "do_espresso"


add_de1_text "off" 1280 1076 -text [translate "ESPRESSO"] -font Helv_10_bold -fill "#2d3046" -anchor "center" 
add_de1_text "off" 1275 1156 -justify right -anchor "ne" -text [translate "Auto-Off:"] -font Helv_8 -fill "#7f879a" -width 520
add_de1_variable "off" 1280 1156 -justify left -anchor "nw" -text "" -font Helv_8  -fill "#42465c" -width 520 -textvariable {[setting_espresso_max_time_text]} 

add_de1_text "off" 1275 1206 -justify right -anchor "ne" -text [translate "Pressure:"] -font Helv_8 -fill "#7f879a" -width 520
add_de1_variable "off" 1280 1206 -justify left -anchor "nw" -text "" -font Helv_8 -fill "#42465c" -width 520 -textvariable {[setting_espresso_pressure_text]} 


add_de1_text "off" 1275 1256 -justify right -anchor "ne" -text [translate "Head Temp:"] -font Helv_8 -fill "#7f879a" -width 520
add_de1_variable "off" 1280 1256 -justify left -anchor "nw" -text "" -font Helv_8  -fill "#42465c" -width 520 -textvariable {[setting_espresso_temperature_text]} 

add_de1_variable "off" 1275 1306 -justify right -anchor "ne" -text "" -font Helv_8 -fill "#7f879a" -width 520 -textvariable {[group_head_heater_action_text]} 
add_de1_variable "off" 1280 1306 -justify left -anchor "nw" -text "" -font Helv_8 -fill "#42465c" -width 520 -textvariable {[group_head_heater_temperature_text]} 
add_de1_button "off" "start_espresso" 948 584 1606 1444


#add_de1_text "espresso" 1275 1306 -justify right -anchor "ne" -text [translate "Flow:"] -font Helv_8 -fill "#7f879a" -width 520
#add_de1_variable "espresso" 1280 1306 -justify left -anchor "nw" -text "1.12 [translate ml/sec]" -font Helv_8 -text "-" -fill "#2d3046" -width 520 -textvariable {[waterflow_text]} 

##############################################################################################################################################################################################################################################################################
# the HOT WATER button and translatable text for it
if {[has_flowmeter] == 0} {
	add_de1_text "water" 510 1076 -text [translate "HOT WATER"] -font Helv_10_bold -fill "#2d3046" -anchor "center" 
	add_de1_variable "water" 510 1136 -text "" -font Helv_9_bold -fill "#73768f" -anchor "center" -textvariable {[translate [de1_substate_text]]} 

	add_de1_text "water" 500 1176 -justify right -anchor "ne" -text [translate "Elapsed:"] -font Helv_8 -fill "#7f879a" -width 520
	add_de1_variable "water" 505 1176 -justify left -anchor "nw" -font Helv_8 -fill "#42465c" -width 520 -text "-" -textvariable {[timer_text]z} 
	add_de1_text "water" 500 1226 -justify right -anchor "ne" -text [translate "Auto-Off:"] -font Helv_8 -fill "#7f879a" -width 520
	add_de1_variable "water" 505 1226 -justify left -anchor "nw" -font Helv_8 -fill "#42465c" -width 520 -text "-" -textvariable {[setting_water_max_time_text]} 
	add_de1_text "water" 500 1276 -justify right -anchor "ne" -text [translate "Temp:"] -font Helv_8 -fill "#7f879a" -width 520
	add_de1_variable "water" 505 1276 -justify left -anchor "nw" -font Helv_8 -fill "#42465c" -width 520 -text "-" -textvariable {[watertemp_text]} 

} else {

	add_de1_text "water" 240 640 -text [translate "HOT WATER"] -font Helv_15_bold -fill "#2d3046" -anchor "nw" 
	add_de1_variable "water" 240 700 -text "" -font Helv_9_bold -fill "#73768f" -anchor "nw" -textvariable {[translate [de1_substate_text]]} 

	add_de1_text "water" 240 800 -justify right -anchor "nw" -text [translate "Time"] -font Helv_8_bold -fill "#5a5d75" -width 520
	#add_de1_text "water" 500 920 -justify right -anchor "center" -text [translate "- Time -"] -font Helv_10_bold -fill "#42465c" -width 520
	add_de1_text "water" 240 850 -justify right -anchor "nw" -text [translate "Elapsed:"] -font Helv_8 -fill "#7f879a" -width 520
	add_de1_variable "water" 770 850 -justify left -anchor "ne" -font Helv_8 -fill "#42465c" -width 520 -text "-" -textvariable {[timer][translate "s"]} 
	add_de1_text "water" 240 900 -justify right -anchor "nw" -text [translate "Auto-Off:"] -font Helv_8 -fill "#7f879a" -width 520
	add_de1_variable "water" 770 900 -justify left -anchor "ne" -font Helv_8 -fill "#42465c" -width 520 -text "-" -textvariable {[setting_water_max_time][translate "s"]} 

	add_de1_text "water" 240 1000 -justify right -anchor "nw" -text [translate "Characteristics"] -font Helv_8_bold -fill "#5a5d75" -width 520
	#add_de1_text "water" 500 1120 -justify right -anchor "center" -text [translate "- Characteristics -"] -font Helv_10_bold -fill "#42465c" -width 520

	add_de1_text "water" 240 1050 -justify right -anchor "nw" -text [translate "Temp:"] -font Helv_8 -fill "#7f879a" -width 520
	add_de1_variable "water" 770 1050 -justify left -anchor "ne" -font Helv_8 -fill "#42465c" -width 520 -text "-" -textvariable {[watertemp_text]} 


	add_de1_text "water" 240 1100 -justify right -anchor "nw" -text [translate "Flow rate:"] -font Helv_8 -fill "#7f879a" -width 520
	add_de1_variable "water" 770 1100 -justify left -anchor "ne" -text "" -font Helv_8 -fill "#42465c" -width 520 -textvariable {[waterflow_text]} 
	add_de1_text "water" 240 1150 -justify right -anchor "nw" -text [translate "Volume:"] -font Helv_8 -fill "#7f879a" -width 520
	add_de1_variable "water" 770 1150 -justify left -anchor "ne" -text "" -font Helv_8 -fill "#42465c" -width 520 -textvariable {[watervolume_text]} 
}

add_de1_button "water" "start_idle" 0 0 2560 1600




add_de1_text "off" 510 1076 -text [translate "HOT WATER"] -font Helv_10_bold -fill "#2d3046" -anchor "center" 
add_de1_text "off" 500 1156 -justify right -anchor "ne" -text [translate "Auto-Off:"] -font Helv_8 -fill "#7f879a" -width 520
add_de1_variable "off" 505 1156 -justify left -anchor "nw" -font Helv_8 -fill "#42465c" -width 520 -text "-" -textvariable {[setting_water_max_time_text]} 
add_de1_text "off" 500 1206 -justify right -anchor "ne" -text [translate "Temp:"] -font Helv_8 -fill "#7f879a" -width 520
add_de1_variable "off" 505 1206 -justify left -anchor "nw" -font Helv_8 -fill "#42465c" -width 520 -text "-" -textvariable {[setting_water_temperature_text]} 

#add_de1_text "water" 2053 1256 -justify right -anchor "ne" -text [translate "Flow:"] -font Helv_8 -fill "#7f879a" -width 520
#add_de1_variable "water" 2058 1256 -justify left -anchor "nw"  -font Helv_8 -fill "#42465c" -width 520 -text "-" -textvariable {[waterflow_text]} 
#add_de1_text "water" 2053 1306 -justify right -anchor "ne" -text [translate "Total:"] -font Helv_8 -fill "#7f879a" -width 520
#add_de1_variable "water" 2058 1306 -justify left -anchor "nw" -font Helv_8 -fill "#42465c" -width 520 -text "-" -textvariable {[watervolume_text]} 
add_de1_button "off" "start_water" 210 612 808 1416
#add_btn_screen "water" "stop"
#add_de1_action "water" "start_water"

##############################################################################################################################################################################################################################################################################
# when state change to "off", send the command to the DE1 to go idle
#add_de1_action "off" "stop"

# tapping the power button tells the DE1 to go to sleep, and it will after a few seconds, at which point we display the screen saver
add_de1_button "off" "start_sleep" 0 0 400 400
add_de1_text "sleep" 2500 1450 -justify right -anchor "ne" -text [translate "Going to sleep"] -font Helv_20_bold -fill "#DDDDDD" 
#add_de1_action "sleep" "do_sleep"

add_de1_button "off" "exit" 800 0 1750 500
#add_de1_action "exit" "app_exit"


# Sleeping cafe photo obtained under creative commons from https://www.flickr.com/photos/curious_e/16300930781/

# turn the screen saver or splash screen off by tapping the page
add_de1_button "saver" "start_idle" 0 0 2560 1600

#add_btn_screen "saver" "off"
#add_btn_screen "splash" "off"

# the SETTINGS button currently exits the app
add_de1_button "off" "app_exit" 2200 0 2600 400
#add_de1_action "settings" "do_settings"