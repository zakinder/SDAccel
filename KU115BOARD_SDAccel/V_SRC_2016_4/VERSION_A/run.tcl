
# Project
puts "INFO: (Xilinx Developer Board for Acceleration Reference Design) creating project and constructing BD"
source create_design.tcl

# Synthesis
puts "INFO: (Xilinx Developer Board for Acceleration Reference Design) launching synthesis"
source run_synth.tcl

# Implementation
puts "INFO: (Xilinx Developer Board for Acceleration Reference Design) launching implementation"
source run_impl.tcl

# DSA
puts "INFO: (Xilinx Developer Board for Acceleration Reference Design) opening implementation and writing DSA"
source write_dsa.tcl

# Finish
puts "INFO: (Xilinx Developer Board for Acceleration Reference Design) done"
