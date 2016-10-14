set ::skindebug 0

#add_de1_variable "off" 10 665 -justify left -anchor "nw" -font Helv_8 -text "" -fill "#42465c" -width 260  -textvariable {[accelerometer_angle_text]} 


##############################################################################################################################################################################################################################################################################
# the STEAM button and translatable text for it

if {[has_flowmeter] == 0} {

	add_de1_text "steam" 1024 538 -text [translate "STEAM"] -font Helv_10_bold -fill "#2d3046" -anchor "center" 
	add_de1_variable "steam" 1024 568 -text "" -font Helv_9_bold -fill "#7f879a" -anchor "center" -textvariable {"[translate [de1_substate_text]]"} 

	# variables to display during steam
	add_de1_text "steam" 1026 588 -justify right -anchor "ne" -text [translate "Elapsed:"] -font Helv_8 -fill "#7f879a" -width 260 
	add_de1_variable "steam" 1029 588 -justify left -anchor "nw" -font Helv_8 -text "-" -fill "#42465c" -width 260  -textvariable {[timer_text]} 
	add_de1_text "steam" 1026 613 -justify right -anchor "ne" -text [translate "Auto-Off:"] -font Helv_8 -fill "#7f879a" -width 260 
	add_de1_variable "steam" 1029 613 -justify left -anchor "nw" -font Helv_8 -text "-" -fill "#42465c" -width 260  -textvariable {[setting_steam_max_time_text]} 
	add_de1_text "steam" 1026 638 -justify right -anchor "ne" -text [translate "Steam Temp:"] -font Helv_8 -fill "#7f879a" -width 260 
	add_de1_variable "steam" 1029 638 -justify left -anchor "nw" -font Helv_8 -text "-" -fill "#42465c" -width 260  -textvariable {[steamtemp_text]} 
	add_de1_text "steam" 1026 663 -justify right -anchor "ne" -text [translate "Pressure:"] -font Helv_8 -fill "#7f879a" -width 260 
	add_de1_variable "steam" 1029 663 -justify left -anchor "nw" -font Helv_8 -text "-" -fill "#42465c" -width 260  -textvariable {[pressure_text]} 

} else {
	add_de1_text "steam" 895 320 -text [translate "STEAM"] -font Helv_15_bold -fill "#2d3046" -anchor "nw" 
	add_de1_variable "steam" 895 350 -text "" -font Helv_9_bold -fill "#7f879a" -anchor "nw" -textvariable {[translate [de1_substate_text]]} 

	# variables to display during steam
	add_de1_text "steam" 895 400 -justify right -anchor "nw" -text [translate "Time"] -font Helv_8_bold -fill "#5a5d75" -width 260 

	add_de1_text "steam" 895 425 -justify right -anchor "nw" -text [translate "Elapsed:"] -font Helv_8 -fill "#7f879a" -width 260 
	add_de1_variable "steam" 1155 425 -justify left -anchor "ne" -font Helv_8 -text "-" -fill "#42465c" -width 260  -textvariable {[timer][translate "s"]} 
	add_de1_text "steam" 895 450 -justify right -anchor "nw" -text [translate "Auto-Off:"] -font Helv_8 -fill "#7f879a" -width 260 
	add_de1_variable "steam" 1155 450 -justify left -anchor "ne" -font Helv_8 -text "-" -fill "#42465c" -width 260  -textvariable {[setting_steam_max_time][translate "s"]} 

	add_de1_text "steam" 895 500 -justify right -anchor "nw" -text [translate "Characteristics"] -font Helv_8_bold -fill "#5a5d75" -width 260 
	add_de1_text "steam" 895 525 -justify right -anchor "nw" -text [translate "Steam Temp:"] -font Helv_8 -fill "#7f879a" -width 260 
	add_de1_variable "steam" 1155 525 -justify left -anchor "ne" -font Helv_8 -text "-" -fill "#42465c" -width 260  -textvariable {[steamtemp_text]} 
	add_de1_text "steam" 895 550 -justify right -anchor "nw" -text [translate "Pressure:"] -font Helv_8 -fill "#7f879a" -width 260 
	add_de1_variable "steam" 1155 550 -justify left -anchor "ne" -font Helv_8 -text "-" -fill "#42465c" -width 260  -textvariable {[pressure_text]} 

	add_de1_text "steam" 895 575 -justify right -anchor "nw" -text [translate "Flow rate:"] -font Helv_8 -fill "#7f879a" -width 260 
	add_de1_variable "steam" 1155 575 -justify left -anchor "ne" -text "" -font Helv_8 -fill "#42465c" -width 260  -textvariable {[waterflow_text]} 
	add_de1_text "steam" 895 600 -justify right -anchor "nw" -text [translate "Volume:"] -font Helv_8 -fill "#7f879a" -width 260 
	add_de1_variable "steam" 1155 600 -justify left -anchor "ne" -text "" -font Helv_8 -fill "#42465c" -width 260  -textvariable {[watervolume_text]} 
}


# 
#add_de1_action "steam" "do_steam"
# when it steam mode, tapping anywhere on the screen tells the DE1 to stop.
add_de1_button "steam" "start_idle" 0 0 1280 800

# STEAM related info to display when the espresso machine is idle
add_de1_text "off" 1024 538 -text [translate "STEAM"] -font Helv_10_bold -fill "#2d3046" -anchor "center" 
add_de1_text "off" 1026 578 -justify right -anchor "ne" -text [translate "Auto-Off:"] -font Helv_8 -fill "#7f879a" -width 260 
add_de1_variable "off" 1029 578 -justify left -anchor "nw" -font Helv_8 -text "-" -fill "#42465c" -width 260  -textvariable {[setting_steam_max_time_text]} 
add_de1_text "off" 1026 603 -justify right -anchor "ne" -text [translate "Steam Temp:"] -font Helv_8 -fill "#7f879a" -width 260 
add_de1_variable "off" 1029 603 -justify left -anchor "nw" -font Helv_8 -text "-" -fill "#42465c" -width 260  -textvariable {[setting_steam_temperature_text]} 
add_de1_variable "off" 1026 628 -justify right -anchor "ne" -text "" -font Helv_8 -fill "#7f879a" -width 260  -textvariable {[steam_heater_action_text]} 
add_de1_variable "off" 1029 628 -justify left -anchor "nw" -font Helv_8 -text "" -fill "#42465c" -width 260  -textvariable {[steam_heater_temperature_text]} 

# when someone taps on the steam button
add_de1_button "off" "start_steam" 874 308 1173 707

##############################################################################################################################################################################################################################################################################
# the ESPRESSO button and translatable text for it

if {[has_flowmeter] == 0} {

	add_de1_text "espresso" 640 538 -text [translate "ESPRESSO"] -font Helv_10_bold -fill "#2d3046" -anchor "center" 
	add_de1_variable "espresso" 640 568 -text "" -font Helv_9_bold -fill "#7f879a" -anchor "center" -textvariable {"[translate [de1_substate_text]]"} 


	add_de1_text "espresso" 640 588 -justify right -anchor "ne" -text [translate "Elapsed:"] -font Helv_8 -fill "#7f879a" -width 260 
	add_de1_variable "espresso" 700 588 -justify left -anchor "nw" -text "" -font Helv_8 -fill "#42465c" -width 260  -textvariable {[timer][translate "s"]} 

	add_de1_text "espresso" 640 613 -justify right -anchor "ne" -text [translate "Auto-Off:"] -font Helv_8 -fill "#7f879a" -width 260 
	add_de1_variable "espresso" 640 613 -justify left -anchor "nw" -text "" -font Helv_8  -fill "#42465c" -width 260  -textvariable {[setting_espresso_max_time][translate "s"]} 

	add_de1_text "espresso" 640 638 -justify right -anchor "ne" -text [translate "Pre-infusion:"] -font Helv_8 -fill "#7f879a" -width 260 
	add_de1_variable "espresso" 640 638 -justify left -anchor "nw" -text "" -font Helv_8  -fill "#42465c" -width 260  -textvariable {[setting_espresso_max_time][translate "s"]} 

	add_de1_text "espresso" 640 663 -justify right -anchor "ne" -text [translate "Pouring:"] -font Helv_8 -fill "#7f879a" -width 260 
	add_de1_variable "espresso" 640 663 -justify left -anchor "nw" -text "" -font Helv_8  -fill "#42465c" -width 260  -textvariable {[setting_espresso_max_time][translate "s"]} 

	add_de1_text "espresso" 640 688 -justify right -anchor "ne" -text [translate "Pressure:"] -font Helv_8 -fill "#7f879a" -width 260 
	add_de1_variable "espresso" 640 688 -justify left -anchor "nw" -text "" -font Helv_8 -fill "#42465c" -width 260  -textvariable {[pressure_text]} 
	add_de1_text "espresso" 640 713 -justify right -anchor "ne" -text [translate "Basket Temp:"] -font Helv_8 -fill "#7f879a" -width 260 
	add_de1_variable "espresso" 640 713 -justify left -anchor "nw" -text "" -font Helv_8 -fill "#42465c" -width 260  -textvariable {[watertemp_text]} 
	add_de1_text "espresso" 640 738 -justify right -anchor "ne" -text [translate "Mix Temp:"] -font Helv_8 -fill "#7f879a" -width 260 
	add_de1_variable "espresso" 640 738 -justify left -anchor "nw" -text "" -font Helv_8 -fill "#42465c" -width 260  -textvariable {[watertemp_text]} 

} else {

	add_de1_text "espresso" 490 310 -text [translate "ESPRESSO"] -font Helv_15_bold -fill "#2d3046" -anchor "nw" 
	add_de1_variable "espresso" 490 340 -text "" -font Helv_9_bold -fill "#7f879a" -anchor "nw" -textvariable {[translate [de1_substate_text]]} 

	add_de1_text "espresso" 490 400 -justify right -anchor "nw" -text [translate "Time"] -font Helv_8_bold -fill "#5a5d75" -width 260 

	add_de1_text "espresso" 490 425 -justify right -anchor "nw" -text [translate "Elapsed:"] -font Helv_8 -fill "#7f879a" -width 260 
	add_de1_variable "espresso" 785 425 -justify left -anchor "ne" -text "" -font Helv_8 -fill "#42465c" -width 260  -textvariable {[timer][translate "s"]} 

	add_de1_text "espresso" 490 450 -justify right -anchor "nw" -text [translate "Auto-Off:"] -font Helv_8 -fill "#7f879a" -width 260 
	add_de1_variable "espresso" 785 450 -justify left -anchor "ne" -text "" -font Helv_8  -fill "#42465c" -width 260  -textvariable {[setting_espresso_max_time][translate "s"]} 

	add_de1_text "espresso" 490 475 -justify right -anchor "nw" -text [translate "Pre-infusion:"] -font Helv_8 -fill "#7f879a" -width 260 
	add_de1_variable "espresso" 785 475 -justify left -anchor "ne" -text "" -font Helv_8  -fill "#42465c" -width 260  -textvariable {4[translate "s"]} 

	add_de1_text "espresso" 490 500 -justify right -anchor "nw" -text [translate "Pouring:"] -font Helv_8 -fill "#7f879a" -width 260 
	add_de1_variable "espresso" 785 500 -justify left -anchor "ne" -text "" -font Helv_8  -fill "#42465c" -width 260  -textvariable {0[translate "s"]} 


	add_de1_text "espresso" 490 550 -justify right -anchor "nw" -text [translate "Characteristics"] -font Helv_8_bold -fill "#5a5d75" -width 260 

	add_de1_text "espresso" 490 575 -justify right -anchor "nw" -text [translate "Pressure:"] -font Helv_8 -fill "#7f879a" -width 260 
	add_de1_variable "espresso" 785 575 -justify left -anchor "ne" -text "" -font Helv_8 -fill "#42465c" -width 260  -textvariable {[pressure_text]} 
	add_de1_text "espresso" 490 600 -justify right -anchor "nw" -text [translate "Basket Temp:"] -font Helv_8 -fill "#7f879a" -width 260 
	add_de1_variable "espresso" 785 600 -justify left -anchor "ne" -text "" -font Helv_8 -fill "#42465c" -width 260  -textvariable {[watertemp_text]} 
	add_de1_text "espresso" 490 625 -justify right -anchor "nw" -text [translate "Mix Temp:"] -font Helv_8 -fill "#7f879a" -width 260 
	add_de1_variable "espresso" 785 625 -justify left -anchor "ne" -text "" -font Helv_8 -fill "#42465c" -width 260  -textvariable {[watertemp_text]} 


	add_de1_text "espresso" 490 650 -justify right -anchor "nw" -text [translate "Flow rate:"] -font Helv_8 -fill "#7f879a" -width 260 
	add_de1_variable "espresso" 785 650 -justify left -anchor "ne" -text "" -font Helv_8 -fill "#42465c" -width 260  -textvariable {[waterflow_text]} 
	add_de1_text "espresso" 490 675 -justify right -anchor "nw" -text [translate "Volume:"] -font Helv_8 -fill "#7f879a" -width 260 
	add_de1_variable "espresso" 785 675 -justify left -anchor "ne" -text "" -font Helv_8 -fill "#42465c" -width 260  -textvariable {[watervolume_text]} 
}

add_de1_button "espresso" "start_idle" 0 0 1280 800

#add_btn_screen "espresso" "stop"
#add_de1_action "espresso" "do_espresso"


add_de1_text "off" 640 538 -text [translate "ESPRESSO"] -font Helv_10_bold -fill "#2d3046" -anchor "center" 
add_de1_text "off" 637 578 -justify right -anchor "ne" -text [translate "Auto-Off:"] -font Helv_8 -fill "#7f879a" -width 260 
add_de1_variable "off" 640 578 -justify left -anchor "nw" -text "" -font Helv_8  -fill "#42465c" -width 260  -textvariable {[setting_espresso_max_time_text]} 

add_de1_text "off" 637 603 -justify right -anchor "ne" -text [translate "Pressure:"] -font Helv_8 -fill "#7f879a" -width 260 
add_de1_variable "off" 640 603 -justify left -anchor "nw" -text "" -font Helv_8 -fill "#42465c" -width 260  -textvariable {[setting_espresso_pressure_text]} 


add_de1_text "off" 637 628 -justify right -anchor "ne" -text [translate "Head Temp:"] -font Helv_8 -fill "#7f879a" -width 260 
add_de1_variable "off" 640 628 -justify left -anchor "nw" -text "" -font Helv_8  -fill "#42465c" -width 260  -textvariable {[setting_espresso_temperature_text]} 

add_de1_variable "off" 637 653 -justify right -anchor "ne" -text "" -font Helv_8 -fill "#7f879a" -width 260  -textvariable {[group_head_heater_action_text]} 
add_de1_variable "off" 640 653 -justify left -anchor "nw" -text "" -font Helv_8 -fill "#42465c" -width 260  -textvariable {[group_head_heater_temperature_text]} 
add_de1_button "off" "start_espresso" 474 292 803 722


#add_de1_text "espresso" 637 653 -justify right -anchor "ne" -text [translate "Flow:"] -font Helv_8 -fill "#7f879a" -width 260 
#add_de1_variable "espresso" 640 653 -justify left -anchor "nw" -text "1.12 [translate ml/sec]" -font Helv_8 -text "-" -fill "#2d3046" -width 260  -textvariable {[waterflow_text]} 

##############################################################################################################################################################################################################################################################################
# the HOT WATER button and translatable text for it
if {[has_flowmeter] == 0} {
	add_de1_text "water" 255 538 -text [translate "HOT WATER"] -font Helv_10_bold -fill "#2d3046" -anchor "center" 
	add_de1_variable "water" 255 568 -text "" -font Helv_9_bold -fill "#73768f" -anchor "center" -textvariable {[translate [de1_substate_text]]} 

	add_de1_text "water" 250 588 -justify right -anchor "ne" -text [translate "Elapsed:"] -font Helv_8 -fill "#7f879a" -width 260 
	add_de1_variable "water" 252 588 -justify left -anchor "nw" -font Helv_8 -fill "#42465c" -width 260  -text "-" -textvariable {[timer_text]z} 
	add_de1_text "water" 250 613 -justify right -anchor "ne" -text [translate "Auto-Off:"] -font Helv_8 -fill "#7f879a" -width 260 
	add_de1_variable "water" 252 613 -justify left -anchor "nw" -font Helv_8 -fill "#42465c" -width 260  -text "-" -textvariable {[setting_water_max_time_text]} 
	add_de1_text "water" 250 638 -justify right -anchor "ne" -text [translate "Temp:"] -font Helv_8 -fill "#7f879a" -width 260 
	add_de1_variable "water" 252 638 -justify left -anchor "nw" -font Helv_8 -fill "#42465c" -width 260  -text "-" -textvariable {[watertemp_text]} 

} else {

	add_de1_text "water" 120 320 -text [translate "HOT WATER"] -font Helv_15_bold -fill "#2d3046" -anchor "nw" 
	add_de1_variable "water" 120 350 -text "" -font Helv_9_bold -fill "#73768f" -anchor "nw" -textvariable {[translate [de1_substate_text]]} 

	add_de1_text "water" 120 400 -justify right -anchor "nw" -text [translate "Time"] -font Helv_8_bold -fill "#5a5d75" -width 260 
	#add_de1_text "water" 250 460 -justify right -anchor "center" -text [translate "- Time -"] -font Helv_10_bold -fill "#42465c" -width 260 
	add_de1_text "water" 120 425 -justify right -anchor "nw" -text [translate "Elapsed:"] -font Helv_8 -fill "#7f879a" -width 260 
	add_de1_variable "water" 385 425 -justify left -anchor "ne" -font Helv_8 -fill "#42465c" -width 260  -text "-" -textvariable {[timer][translate "s"]} 
	add_de1_text "water" 120 450 -justify right -anchor "nw" -text [translate "Auto-Off:"] -font Helv_8 -fill "#7f879a" -width 260 
	add_de1_variable "water" 385 450 -justify left -anchor "ne" -font Helv_8 -fill "#42465c" -width 260  -text "-" -textvariable {[setting_water_max_time][translate "s"]} 

	add_de1_text "water" 120 500 -justify right -anchor "nw" -text [translate "Characteristics"] -font Helv_8_bold -fill "#5a5d75" -width 260 
	#add_de1_text "water" 250 560 -justify right -anchor "center" -text [translate "- Characteristics -"] -font Helv_10_bold -fill "#42465c" -width 260 

	add_de1_text "water" 120 525 -justify right -anchor "nw" -text [translate "Temp:"] -font Helv_8 -fill "#7f879a" -width 260 
	add_de1_variable "water" 385 525 -justify left -anchor "ne" -font Helv_8 -fill "#42465c" -width 260  -text "-" -textvariable {[watertemp_text]} 


	add_de1_text "water" 120 550 -justify right -anchor "nw" -text [translate "Flow rate:"] -font Helv_8 -fill "#7f879a" -width 260 
	add_de1_variable "water" 385 550 -justify left -anchor "ne" -text "" -font Helv_8 -fill "#42465c" -width 260  -textvariable {[waterflow_text]} 
	add_de1_text "water" 120 575 -justify right -anchor "nw" -text [translate "Volume:"] -font Helv_8 -fill "#7f879a" -width 260 
	add_de1_variable "water" 385 575 -justify left -anchor "ne" -text "" -font Helv_8 -fill "#42465c" -width 260  -textvariable {[watervolume_text]} 
}

add_de1_button "water" "start_idle" 0 0 1280 800




add_de1_text "off" 255 538 -text [translate "HOT WATER"] -font Helv_10_bold -fill "#2d3046" -anchor "center" 
add_de1_text "off" 250 578 -justify right -anchor "ne" -text [translate "Auto-Off:"] -font Helv_8 -fill "#7f879a" -width 260 
add_de1_variable "off" 252 578 -justify left -anchor "nw" -font Helv_8 -fill "#42465c" -width 260  -text "-" -textvariable {[setting_water_max_time_text]} 
add_de1_text "off" 250 603 -justify right -anchor "ne" -text [translate "Temp:"] -font Helv_8 -fill "#7f879a" -width 260 
add_de1_variable "off" 252 603 -justify left -anchor "nw" -font Helv_8 -fill "#42465c" -width 260  -text "-" -textvariable {[setting_water_temperature_text]} 

#add_de1_text "water" 1026 628 -justify right -anchor "ne" -text [translate "Flow:"] -font Helv_8 -fill "#7f879a" -width 260 
#add_de1_variable "water" 1029 628 -justify left -anchor "nw"  -font Helv_8 -fill "#42465c" -width 260  -text "-" -textvariable {[waterflow_text]} 
#add_de1_text "water" 1026 653 -justify right -anchor "ne" -text [translate "Total:"] -font Helv_8 -fill "#7f879a" -width 260 
#add_de1_variable "water" 1029 653 -justify left -anchor "nw" -font Helv_8 -fill "#42465c" -width 260  -text "-" -textvariable {[watervolume_text]} 
add_de1_button "off" "start_water" 105 306 404 708
#add_btn_screen "water" "stop"
#add_de1_action "water" "start_water"

##############################################################################################################################################################################################################################################################################
# when state change to "off", send the command to the DE1 to go idle
#add_de1_action "off" "stop"

# tapping the power button tells the DE1 to go to sleep, and it will after a few seconds, at which point we display the screen saver
add_de1_button "off" "start_sleep" 0 0 200 200
add_de1_text "sleep" 1250 725 -justify right -anchor "ne" -text [translate "Going to sleep"] -font Helv_20_bold -fill "#DDDDDD" 
#add_de1_action "sleep" "do_sleep"

add_de1_button "off" "exit" 400 0 875 250
#add_de1_action "exit" "app_exit"


# Sleeping cafe photo obtained under creative commons from https://www.flickr.com/photos/curious_e/16300930781/

# turn the screen saver or splash screen off by tapping the page
add_de1_button "saver" "start_idle" 0 0 1280 800

#add_btn_screen "saver" "off"
#add_btn_screen "splash" "off"

# the SETTINGS button currently exits the app
add_de1_button "off" "app_exit" 1100 0 1300 200
#add_de1_action "settings" "do_settings"
