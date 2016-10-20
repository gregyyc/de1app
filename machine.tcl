package provide de1_machine 1.0


# ray's DE1 address (usb key #?)
# de1_address "EE:01:68:94:A5:48"

# john's DE1 (usb key #2)
#	de1_address "C5:80:EC:A5:F9:72"

# USB KEY #1
# de1_address "C1:80:A7:32:CD:A3"

#	de1_address "C1:80:A7:32:CD:A3"
#	has_flowmeter 0

array set ::de1 {
	last_action_time 0
    found    0
    scanning 1
    device_handle 0
	suuid "0000A000-0000-1000-8000-00805F9B34FB"
	sinstance 0
	cuuid "0000a002-0000-1000-8000-00805f9b34fb"
	cinstance 0
	pressure 0
	head_temperature 0
	mix_temperature 0
	flow 0
	timer 0
	volume 0
	wrote 0
	cmdstack {}
	state 0
	substate 0
	current_context ""
	serial_number 0
	voltage 110
	has_catering_kit 0
	has_plumbing_kit 0
	max_pressure 10
	max_flowrate 6
	min_temperature 80
	max_temperature 96
	water_level_percent 0
	water_heater_wattage 1500
	steam_heater_wattage 1500
	group_heater_wattage 500
	hertz 50
}

#global accelerometer
#set accelerometer 0
#if {[flight_mode_enable] == 1} {#
#	set accelerometer 1
#}

array set ::settings {
	flying 0
	timer_interval 500
	screen_saver_delay 1800
	screen_saver_change_interval 600
	measurements "metric"
	steam_max_time 47
	steam_temperature 160
	water_max_time 10
	water_temperature 75
	espresso_max_time 42
	espresso_temperature 92
	espresso_pressure 9.2
	app_brightness 100
	saver_brightness 30
	accelerometer_angle 45
	speaking 2
	speaking_rate 1.5
	speaking_pitch 1.0
	sound_button_in 8
	sound_button_out 11
	flight_mode_enable 0
}

array set ::de1_state {
	Sleep \x00
	GoingToSleep \x01
	Idle \x02
	Busy \x03
	Espresso \x04
	Steam \x05
	HotWater \x06
	ShortCal \x07
	SelfTest \x08
	LongCal \x09
	Descale \x0A
	FatalError \x0B
	Init \x0C
	NewSleep \x0D
	TankEmpty \x90
	FillingTank \x91
}

array set ::de1_num_state {
  0 Sleep
  1 GoingToSleep
  2 Idle 
  3 Busy 
  4 Espresso 
  5 Steam
  6 HotWater
  7 ShortCal
  8 SelfTest
  9 LongCal 
  10 Descale
  11 FatalError 
  12 Init
  13 NewSleep
  144 TankEmpty
  145 FillingTank
}
array set ::de1_num_state_reversed [reverse_array ::de1_num_state]


array set ::de1_substate_types {
	-   "starting"
	0	"waiting"
	1	"heating the water tank"
	2	"warming the heater"
	3	"perfecting the mix"
	4	"preinfusion"
	5	"pouring"
	6	"ending"
}
array set ::de1_substate_types_reversed [reverse_array ::de1_substate_types]

array set translation [read_binary_file "translation.tcl"]


proc de1_substate_text {} {
	set num $::de1(substate)
	set substate_txt $::de1_substate_types($num)
	return $substate_txt
}



proc next_espresso_step {} {
	msg "Tell DE1 to move to the next step in espresso making"

}

proc start_steam {} {
	msg "Tell DE1 to start making STEAM"
	set ::de1(timer) 0
	set ::de1(volume) 0
	de1_send $::de1_state(Steam)

	if {$::android == 0} {
		#after [expr {1000 * $::settings(steam_max_time)}] {page_display_change "steam" "off"}
		after 200 "update_de1_state $::de1_state(Steam)"
	}

}

proc start_espresso {} {
	msg "Tell DE1 to start making ESPRESSO"
	set ::de1(timer) 0
	set ::de1(volume) 0

	de1_send $::de1_state(Espresso)

	if {$::android == 0} {
		#after [expr {1000 * $::settings(espresso_max_time)}] {page_display_change "espresso" "off"}
		after 200 "update_de1_state $::de1_state(Espresso)"
	}

	#run_next_userdata_cmd
}

proc start_water {} {
	msg "Tell DE1 to start making HOT WATER"
	set ::de1(timer) 0
	set ::de1(volume) 0
	de1_send $::de1_state(HotWater)

	if {$::android == 0} {
		#after [expr {1000 * $::settings(water_max_time)}] {page_display_change "water" "off"}
		after 200 "update_de1_state $::de1_state(HotWater)"
	}
}

proc start_idle {} {
	msg "Tell DE1 to start to go IDLE (and stop whatever it is doing)"

	# change the substate to ending immediately to provide UI feedback
	#set ::de1(substate) 6

	set ::settings(flying) 0
	de1_send $::de1_state(Idle)
	if {$::android == 0} {
		#after [expr {1000 * $::settings(water_max_time)}] {page_display_change "water" "off"}
		after 3200 "update_de1_state $::de1_state(Idle)"
	}

	#msg "sensors: [borg sensor list]"
}


proc start_sleep {} {
	msg "Tell DE1 to start to go to SLEEP (only send when idle)"
	de1_send $::de1_state(Sleep)
	
	if {$::android == 0} {
		#after [expr {1000 * $::settings(water_max_time)}] {page_display_change "water" "off"}
		after 200 "update_de1_state $::de1_state(GoingToSleep)"
		after 2000 "update_de1_state $::de1_state(Sleep)"
	}
}


proc has_flowmeter {} {
	return $::de1(has_flowmeter)
}

