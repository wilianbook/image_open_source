
# Loading additional proc with user specified bodies to compute parameter values.
source [file join [file dirname [file dirname [info script]]] gui/ErosionDilationGray_v1_0.gtcl]

# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "color_width" -parent ${Page_0}
  ipgui::add_param $IPINST -name "window_size" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "pip_counter" -parent ${Page_0}
  ipgui::add_static_text $IPINST -name "Discriptions" -parent ${Page_0} -text {

Discriptions:

The window size must be less than 16 !



clk: colck.

rst_n: Reset, active low.

mode: 0 for erosion, 1 for dilation

template: The template you want to use for erosion or dilation.

in_enable: Input enable, must enable with the same time as the first input data.

in_data: Input data.

out_enable: Output enable, will be high when the first output data output.

out_data: Output data.}


}

proc update_PARAM_VALUE.pip_counter { PARAM_VALUE.pip_counter PARAM_VALUE.window_size PARAM_VALUE.pip_counter } {
	# Procedure called to update pip_counter when any of the dependent parameters in the arguments change
	
	set pip_counter ${PARAM_VALUE.pip_counter}
	set window_size ${PARAM_VALUE.window_size}
	set values(window_size) [get_property value $window_size]
	set values(pip_counter) [get_property value $pip_counter]
	set_property value [gen_USERPARAMETER_pip_counter_VALUE $values(window_size) $values(pip_counter)] $pip_counter
}

proc validate_PARAM_VALUE.pip_counter { PARAM_VALUE.pip_counter } {
	# Procedure called to validate pip_counter
	return true
}

proc update_PARAM_VALUE.color_width { PARAM_VALUE.color_width } {
	# Procedure called to update color_width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.color_width { PARAM_VALUE.color_width } {
	# Procedure called to validate color_width
	return true
}

proc update_PARAM_VALUE.window_size { PARAM_VALUE.window_size } {
	# Procedure called to update window_size when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.window_size { PARAM_VALUE.window_size } {
	# Procedure called to validate window_size
	return true
}


proc update_MODELPARAM_VALUE.color_width { MODELPARAM_VALUE.color_width PARAM_VALUE.color_width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.color_width}] ${MODELPARAM_VALUE.color_width}
}

proc update_MODELPARAM_VALUE.window_size { MODELPARAM_VALUE.window_size PARAM_VALUE.window_size } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.window_size}] ${MODELPARAM_VALUE.window_size}
}

proc update_MODELPARAM_VALUE.pip_counter { MODELPARAM_VALUE.pip_counter PARAM_VALUE.pip_counter } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.pip_counter}] ${MODELPARAM_VALUE.pip_counter}
}

